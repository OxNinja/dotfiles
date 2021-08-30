" Plugins
call plug#begin('~/.vim/plugged')
    Plug 'nekonako/xresources-nvim'
    Plug 'sickill/vim-pasta'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'valloric/youcompleteme'
    Plug 'scrooloose/nerdtree'
    Plug 'alvan/vim-closetag'
    Plug 'ap/vim-css-color'
call plug#end()
" End plugins

" Config
colorscheme xresources

let g:airline_theme='htb'

set number
syntax on
set tabstop=4 softtabstop=4 shiftwidth=4 showmatch expandtab autoindent smartindent wrap

if !&scrolloff
  set scrolloff=3
endif

if !&sidescrolloff
  set sidescrolloff=5
endif

map <C-l> :noh<ENTER>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

tnoremap <Esc> <C-\><C-n>
tnoremap <M-[> <Esc>
tnoremap <C-v><Esc> <Esc>

" YCM
let g:ycm_global_ycm_extra_conf = "$HOME/.vim/bundle/.ycm_extra_conf.py"
