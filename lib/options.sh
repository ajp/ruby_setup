#!/bin/bash

# DESCRIPTION
# Defines command line prompt options.

# Process option selection.
# Parameters:
# $1 = The option to process.
process_option() {
  case $1 in
    'c')
      install_certs;;
    'b')
      install_bundler;;
    'g')
      install_gems;;
    't')
      apply_ctags;;
    'i')
      install_certs
      install_bundler
      install_gems
      apply_ctags;;
    'q');;
    *)
      printf "ERROR: Invalid option.\n";;
  esac
}
export -f process_option
