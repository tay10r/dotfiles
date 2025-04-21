#!/usr/bin/bash

set -e
set -u

if [ ! -e setup/setup_bash.sh ]; then
  echo "must run this from the dotfiles root dir"
  exit 1
fi

echo "export DOTFILES_DIR=\"$PWD\"" >>~/.bashrc
echo "source \"${PWD}/init.bash\"" >>~/.bashrc
