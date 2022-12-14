colorscheme codedark
set termguicolors
set number
set t_co=256
syntax on
set backspace=indent,eol,start
filetype indent on
set autoindent
set ttyfast
set tabstop=4
set shiftwidth=4
set noexpandtab
set noerrorbells
set novisualbell
set tm=500
set t_vb=
set noswapfile
set nobackup
set nowb
set ignorecase
set nocompatible
set showtabline=2
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
cnoremap q qa
cnoremap w wa
cnoremap wq xa

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-python/python-syntax'
Plug 'bfrg/vim-cpp-modern'
call plug#end()

let g:airline_theme='atomic'
let g:python_highlight_all = 1

let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_chan_whitespace_error = 0
let g:go_highlight_extra_types = 0
let g:go_highlight_space_tab_error = 0
let g:go_highlight_trailing_whitespace_error=0

let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1
