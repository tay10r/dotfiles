#!/usr/bin/bash

set -e
set -u

ver="v0.11.0"
arch="x86_64"

if [ ! -e "nvim-linux-${arch}" ]; then
  if [ ! -e "nvim-linux-${arch}.tar.gz" ]; then
    wget "https://github.com/neovim/neovim/releases/download/${ver}/nvim-linux-${arch}.tar.gz"
  fi
  tar --extract --file "nvim-linux-${arch}.tar.gz"
  rm "nvim-linux-${arch}.tar.gz"
fi

