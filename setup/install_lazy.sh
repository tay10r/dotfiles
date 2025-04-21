#!/usr/bin/bash

set -e
set -u

if [ ! -e setup/install_lazy.sh ]; then
  echo "run this from the dotfiles dir"
  exit 1
fi

if [ ! -e config/nvim/lazy ]; then
  mkdir config/nvim/lazy
fi

if [ ! -e config/nvim/lazy/lazy.nvim ]; then
  git clone https://github.com/folke/lazy.nvim config/nvim/lazy/lazy.nvim
fi
