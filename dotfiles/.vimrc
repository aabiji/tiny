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
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
