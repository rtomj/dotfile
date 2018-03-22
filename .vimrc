set nocompatible	" required
filetype off		" required
set encoding=utf-8
syntax off
colorscheme acme
set number		" show line numbers
set foldenable		" enable folding
set modelines=1


"Create a new tab
noremap <C-w> :tabnew<Space>
inoremap <C-w> <Esc>:tabnew<Space>

"Tab nav
nmap <silent> <C-n> :tabnext>CR>
nmap <silent> <C-p> :tabprev<CR>
imap <silent> <C-n> <esc><C-n>
imap <silent> <C-p> <esc><C-p>

map <C-f> :NERDTreeToggle<CR>

let g:NERDTreeWinPos= "right"

" NERDTree open on startup
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" set runtime path and init
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage itself - required
Plugin 'VundleVim/Vundle.vim'

Plugin 'c.vim'
Plugin 'fatih/vim-go'
Plugin 'vifm/vifm.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'

" All plugins must be added before the following line
call vundle#end()	" required
filetype plugin indent on	" required
