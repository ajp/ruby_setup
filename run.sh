#! /usr/bin/env bash

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./run.sh OPTION

# SETTINGS
source settings/settings.sh

# FUNCTIONS
source lib/utilities.sh
source lib/options.sh

# EXECUTION
while true; do
  if [[ $# == 0 ]]; then
    printf "\nUsage: run OPTION\n\n"
    printf "Ruby Setup Options:\n"
    printf "  c: Install certificates.\n"
    printf "  b: Install and configure Bundler.\n"
    printf "  g: Install gems.\n"
    printf "  t: Apply ctags.\n"
    printf "  i: Install everything (i.e. executes all options, listed above, top to bottom).\n"
    printf "  q: Quit/Exit.\n\n"
    read -p "Enter selection: " response
    printf "\n"
    process_option $response
  else
    process_option $1
    printf "\n"
  fi

  break
done
