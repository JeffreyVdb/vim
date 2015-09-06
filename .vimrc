execute pathogen#infect()
syntax on
set nu
filetype plugin indent on
colorscheme seoul256

set cursorline
set t_Co=256
set laststatus=2
set cmdheight=1
set shell=/bin/bash


" Puppet settings
autocmd FileType puppet setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab

" Powerline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'

