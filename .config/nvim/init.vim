call plug#begin()
Plug 'preservim/nerdtree'
call plug#end()

set noexpandtab tabstop=4 shiftwidth=4
set number relativenumber
set colorcolumn=80
let g:netrw_bufsettings = 'relativenumber'

noremap <Leader>y "+y
noremap <Leader>p "+p
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
