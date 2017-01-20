execute pathogen#infect()

set runtimepath^=~/.vim/bundle/ctrlp.vim
set clipboard=unnamed
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set mouse=a
set syntax=on
set nu
set autoindent
filetype on
syntax on
set clipboard=unnamed
set backspace=2 " Esto lo tuve que agregar al actualizar vim a la version 7.4

" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" allow to run project specific .vimrc files
set exrc
set secure

" See :help syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_auto_jump = 2
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 3
