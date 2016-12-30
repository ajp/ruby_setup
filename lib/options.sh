#! /usr/bin/env bash

# DESCRIPTION
# Defines command line prompt options.

# Process option selection.
# Parameters:
# $1 = The option to process.
process_option() {
  case $1 in
    'rvm')
      install_rvm;;
    'c')
      install_certs;;
    'b')
      install_bundler;;
    'g')
      install_gems;;
    't')
      apply_ctags;;
    'i')
      install_rvm
      install_certs
      install_bundler
      install_gems
      apply_ctags;;
    'q');;
    *)
      fancy_echo "ERROR: Invalid option.\n";;
  esac
}
export -f process_option
