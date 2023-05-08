set list
set number
set expandtab
set shiftwidth=2
set tabstop=2
set foldmethod=syntax
set nowrap
set termguicolors
set colorcolumn=120

call plug#begin('~/.vim/plugged')

Plug 'tomasr/molokai'
Plug 'fmoralesc/molokayo'
Plug 'rhysd/vim-clang-format'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhartington/oceanic-next'
Plug 'tikhomirov/vim-glsl'

call plug#end()

colorscheme molokayo

autocmd FileType c,cpp ClangFormatAutoEnable
