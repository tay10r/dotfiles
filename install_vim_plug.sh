#!/bin/bash

set -e
set -u

url="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs $url
