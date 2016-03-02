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
" Commented to test javacomplete
"Plugin 'Valloric/YouCompleteMe'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'flazz/vim-colorschemes'
Plugin 'fatih/vim-go'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mhinz/vim-signify'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-obsession'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/echodoc.vim'
Plugin 'christoomey/vim-tmux-navigator'

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
set guifont=Sauce\ Code\ Powerline\ Black
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

set number

"autoreload vimrc
augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

"color
let g:solarized_termcolors=256
set background=dark
syntax enable
colorscheme solarized

" Use spaces, damn it!
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set nowrap
set textwidth=0

set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_tag_nr=1
let g:airline#extensions#tabline#show_tab_type=1
let g:airline_theme='solarized'
let g:airline#extensions#tabline#buffer_idx_mode = 1
" air-line
let g:airline_powerline_fonts = 1
"
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
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

map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

autocmd FileType java setlocal omnifunc=javacomplete#Complete
let g:neocomplete#data_directory = "~/.vim/tmp/swap"
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" golang fix
let g:neocomplete#sources#omni#input_patterns.go = '[^.[:digit:] *\t]\.\w*'
let g:echodoc_enable_at_startup = 1
set completeopt+=menuone
set completeopt-=preview
set cmdheight=2

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


