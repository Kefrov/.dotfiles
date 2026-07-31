" yank to system clipboard
set clipboard=unnamedplus

set timeoutlen=300

" exit insert mode by pressing jk
inoremap jk <Esc>

" have j and k navigate visual lines rather than logical ones
nnoremap j gj
nnoremap k gk

" indent without losing selection
vnoremap < <gv
vnoremap > >gv

" yank till end of line
nnoremap Y y$

" scroll half a page then center
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" show line numbers
set number

" faster redraw for big files
set lazyredraw
