set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'flazz/vim-colorschemes'
"Plugin 'fatih/vim-go'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'mhinz/vim-signify'
"Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
"Plugin 'honza/vim-snippets'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-fugitive'

"html coding
"Plugin 'mattn/emmet-vim'
"web component package manager
"Plugin 'ain/vim-bower'
"Autloload browser
"Plugin 'jaxbot/browserlink.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set lines=999 columns=100

set number

"autoreload vimrc
augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

"color
colorscheme codeschool

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_tag_nr=1
let g:airline#extensions#tabline#show_tab_type=1

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab



"NERDTree
let g:NERDTreeWinPos="right"
nnoremap <leader>n :NERDTree .<CR>
let g:NERDTreeShowBookmarks=1

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
