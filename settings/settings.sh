#!/bin/bash

# DESCRIPTION
# Defines global settings.

# SETTINGS
set -o nounset
# set -o errexit # Disabled since dependent gems with no signatures throws errors which exits the script immediately.
set -o pipefail
IFS=$'\n\t' # Defines how Bash splits words and iterates arrays. This defines newlines and tabs as delimiters.

SETTINGS_ROOT="$PWD/settings"
CERTS_SOURCE_PATH="$SETTINGS_ROOT/certs.txt"
GEMS_SOURCE_PATH="$SETTINGS_ROOT/gems.txt"
