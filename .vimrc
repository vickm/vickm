set hidden
set showtabline=2
set nocompatible
filetype off

"
" set the runtime pat hto include Vundle and initialize it
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" YouCompleteMe
" Plugin 'Valloric/YouCompleteMe'

" added nerdtree
Plugin 'scrooloose/nerdtree'

" add PowerLine
" Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Add ctrl-p
Plugin 'ctrlpvim/ctrlp.vim'

" VIM colorschemes
Plugin 'rafi/awesome-vim-colorschemes'

" sensible.vim
Plugin 'tpope/vim-sensible'

" sleuth.vim
Plugin 'tpope/vim-sleuth'

" unimpaired.vim
Plugin 'tpope/vim-unimpaired'

" surround
Plugin 'tpope/vim-surround'

" fugitive
Plugin 'tpope/vim-fugitive'

" easymotion
Plugin 'easymotion/vim-easymotion'

" All Plugins must be added before this line
call vundle#end()
filetype plugin indent on

"
" :PluginList		- lists configured plugins
" :PluginInstall	- installs plugins; append `!` to update or just :Pluginupdate
" :PluginSearch foo	- searches for foo; append `!` to refresh local cache
" :PluginClean		- confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details
"

" NerdTree
map <C-n> :NERDTreeToggle<CR>

set laststatus=2

set number

" colorscheme molokai
set background=dark
colorscheme hybrid_reverse

if executable('ag')
	set grepprg=ag\ --nogroup\ --nocolor\ --column
	set grepformat=%f:%l:%c%m
endif

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

nnoremap \ :Ag<SPACE>

" map leader to space
nnoremap <SPACE> <Nop>
let mapleader="\<Space>"

" highlight the current line
set cursorline

let g:airline_theme = 'wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
