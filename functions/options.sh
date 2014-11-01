#!/bin/bash

# DESCRIPTION
# Defines command line prompt options.

# Process option selection.
# Parameters:
# $1 = The option to process.
function process_option() {
  case $1 in
    'c')
      install_certs
      break;;
    'b')
      install_bundler
      break;;
    'g')
      install_gems
      break;;
    't')
      apply_ctags
      break;;
    'i')
      install_certs
      install_bundler
      install_gems
      break;;
    'q')
      break;;
  esac
}
export -f process_option
