execute pathogen#infect()
filetype plugin indent on

" Look and feel
syntax on
set nu
colorscheme seoul256
set cursorline
set t_Co=256
set laststatus=2
set cmdheight=1
set shell=/bin/bash
set mouse=a
set colorcolumn=80,100

" Fuzzy searching
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and
  " respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

" Puppet settings
autocmd FileType puppet setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype sh setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype bash setlocal ts=4 sts=4 sw=4 expandtab

" Powerline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'

" Shortcuts
map <C-n> :NERDTreeToggle<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

