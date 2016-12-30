#! /usr/bin/env bash

# DESCRIPTION
# Defines general utility functions.

install_certs() {
  if [[ -f "$CERTS_SOURCE_PATH" ]]; then
    fancy_echo "Installing certificates...\n"

    while read line; do
      # Skip blank or comment lines.
      if [[ "$line" != '' && "$line" != *'#'* ]]; then
        fancy_echo "Installing $line...\n"
        local gem_cert=$(mktemp -t gem_cert) || { fancy_echo "Unable to create temporary gem cert.\n"; return; }
        curl --silent --fail --show-error "$line" > $gem_cert || { fancy_echo "Failed to download cert.\n"; return; }
        gem cert --add $gem_cert
        rm -f $gem_cert
      fi
    done < "$CERTS_SOURCE_PATH"

    fancy_echo "Certificate install complete!\n"
  else
    fancy_echo "Install canceled. Missing certificate source list: $CERTS_SOURCE_PATH\n"
  fi
}
export -f install_certs

install_bundler() {
  local max_jobs=$((`sysctl -n hw.ncpu` - 1))
  local bundler_config="$HOME/.bundle/config"

  gem install bundler
  bundle config --global jobs $max_jobs
}
export -f install_bundler

install_gems() {
  if [[ -f "$GEMS_SOURCE_PATH" ]]; then
    fancy_echo "Installing gems...\n"

    local installed_gems=($(gem list | awk '{print $1}'))

    while read line; do
      # Skip blank or comment lines.
      if [[ "$line" != '' && "$line" != *'#'* ]]; then
        local gem_name=$(printf -- "$line" | awk '{print $1}')

        # Only install gems not already installed.
        if [[ "${installed_gems[*]}" != *"$gem_name"* ]]; then
          fancy_echo "Installing $gem_name...\n"
          eval "gem install $line"
        fi
      fi
    done < "$GEMS_SOURCE_PATH"

    fancy_echo "Gem install complete!\n"
  else
    fancy_echo "Install canceled. Missing gem source list: $GEMS_SOURCE_PATH\n"
  fi
}
export -f install_gems


install_rvm() {
#! /usr/bin/env bash

# DESCRIPTION
# Installs Ruby RVM software.

# EXECUTION
# Ruby
if ! command -v rvm > /dev/null; then
  #
  # Install RVM and latest stable ruby
  #
  if ! command -v rbenv >/dev/null; then
    if ! command -v rvm >/dev/null; then
      fancy_echo 'Ruby - Installing RVM and the latest Ruby...'
      curl -L https://get.rvm.io | bash -s stable --ruby --auto-dotfiles --autolibs=enable
      . ~/.rvm/scripts/rvm
    else
      local_version="$(rvm -v 2> /dev/null | awk '$2 != ""{print $2}')"
      latest_version="$(curl -s https://raw.githubusercontent.com/wayneeseguin/rvm/stable/VERSION)"
      if [ "$local_version" != "$latest_version" ]; then
        fancy_echo 'Ruby - Upgrading RVM...'
        rvm get stable --auto-dotfiles --autolibs=enable --with-gems="bundler"
      else
        fancy_echo "Ruby - Already using the latest version of RVM. Skipping..."
      fi
    fi
  fi
fi
}
export -f install_rvm

fancy_echo() {
  # shellcheck disable=SC2039
  local fmt="$1"; shift

  # shellcheck disable=SC2059
  printf "\n$fmt\n" "$@"
}
export -f fancy_echo

apply_ctags() {
  gem ctags
}
export -f apply_ctags
