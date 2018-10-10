" We use a vim
set nocompatible
"
" Colo(u)red or not colo(u)red
" If you want color you should set this to true
"
let color = "true"
"
if has("syntax")
  if color == "true"
    " This will switch colors ON
    so ${VIMRUNTIME}/syntax/syntax.vim
  else
    " this switches colors OFF
    syntax off
    set t_Co=0
  endif
endif
" use 2 spaces for indentation
"set cindent
"set shiftwidth=2
set tabstop=4
"set expandtab

" highlight white spaces at the end of each line
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" distibguish spaces from tabs
set list listchars=tab:»·,trail:\ 

set fileencodings=utf-8,latin2
set enc=utf8

set background=dark

set number

" clang-format
map <C-K> :pyf /usr/share/vim/addons/syntax/clang-format-3.5.py<CR>
imap <C-K> <ESC>:pyf /usr/share/vim/addons/syntax/clang-format-3.5.py<CR>i

" you-complete-me
let g:ycm_extra_conf_globlist = ['~/prjs/*/*','!/*']

" gvim stuff
"colorscheme torte

set hlsearch
