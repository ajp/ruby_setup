#!/bin/bash

# DESCRIPTION
# Defines general utility functions.

function install_certs() {
  if [[ -f "$CERTS_SOURCE_PATH" ]]; then
    printf "Installing certificates...\n"

    while read line; do
      # Skip blank or comment lines.
      if [[ "$line" != '' && "$line" != *'#'* ]]; then
        printf "Installing $line...\n"
        local gem_cert=$(mktemp -t gem_cert) || { printf "Unable to create temporary gem cert.\n"; return; }
        curl --silent --fail --show-error "$line" > $gem_cert || { printf "Failed to download cert.\n"; return; }
        gem cert --add $gem_cert
        rm -f $gem_cert
      fi
    done < "$CERTS_SOURCE_PATH"

    printf "Certificate install complete!\n"
  else
    printf "Install canceled. Missing certificate source list: $CERTS_SOURCE_PATH\n"
  fi
}
export -f install_certs

function install_bundler() {
  local max_jobs=$((`sysctl -n hw.ncpu` - 1))
  local bundler_config="$HOME/.bundle/config"

  gem install bundler
  rbenv rehash
  bundle config --global jobs $max_jobs
}
export -f install_bundler

function install_gems() {
  if [[ -f "$GEMS_SOURCE_PATH" ]]; then
    printf "Installing gems...\n"

    local installed_gems=($(gem list | awk '{print $1}'))

    while read line; do
      # Skip blank or comment lines.
      if [[ "$line" != '' && "$line" != *'#'* ]]; then
        local gem_name=$(printf -- "$line" | awk '{print $1}')

        # Only install gems not already installed.
        if [[ "${installed_gems[*]}" != *"$gem_name"* ]]; then
          printf "Installing $gem_name...\n"
          eval "gem install $line"
        fi
      fi
    done < "$GEMS_SOURCE_PATH"

    printf "Gem install complete!\n"
  else
    printf "Install canceled. Missing gem source list: $GEMS_SOURCE_PATH\n"
  fi
}
export -f install_gems
