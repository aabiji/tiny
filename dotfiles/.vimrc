set termguicolors
colorscheme titan
set background=dark
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

nnoremap <C-j> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>

nnoremap j <Left>
nnoremap l <Right>
nnoremap k <Up>
nnoremap m <Down>

nnoremap <C-c> "+yy
nnoremap <C-v> "+p

cnoreabbrev f NERDTree
let g:NERDTreeWinPos = "right"

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-python/python-syntax'
Plug 'bfrg/vim-cpp-modern'
Plug 'preservim/nerdtree'
call plug#end()

let g:airline_theme='onedark'
let g:ariline_powerline_fonts=1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_chan_whitespace_error = 0
let g:go_highlight_extra_types = 0
let g:go_highlight_space_tab_error = 0
let g:go_highlight_trailing_whitespace_error=0

let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1
