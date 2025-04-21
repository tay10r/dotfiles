#!/bin/sh

if [ ! -e "$PWD/init.vim" ]; then
  echo "Must run from git root directory."
  exit 1
fi

mkdir -p ~/.config/nvim

echo "source $PWD/init.vim" >~/.config/nvim/init.vim
