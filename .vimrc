" Set Vim options
set nocompatible              " be iMproved, required
set hidden                    " allow switching between buffers without saving
set mouse=a                   " enable mouse support
set number                    " display line numbers
filetype off                  " required
set tabstop=2
set shiftwidth=2
set expandtab

map <C-s> :w<CR>

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add plugins
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'scrooloose/nerdcommenter'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/IndexedSearch'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

" Configure NERDTree
let g:NERDTreeChDirMode = 2
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 25
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeHighlightCursorlineFull = 1
let g:NERDTreeExactMatchHighlightColor = '#ffb900'
highlight! link NERDTreeDir Statement
let g:NERDTreeExecTrailing = 'vertical 1'
let g:NERDTreeDirArrows = 0
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['\.git$', '\.swp$', '\.zip$', '__pycache__']
let g:NERDTreeSortOrder = ['^__\.py', '\.py$', '^__\.js', '\.js$', '^__\.ts', '\.ts$', '^__\.html', '\.html$', '^__\.css', '\.css$', '^__\.sass', '\.sass$']
let g:NERDTreeAutoDeleteBuffer = 1

" Define NERDTree key mappings
map <C-n> :NERDTreeToggle<CR>
map <leader>n :NERDTreeFind<CR>
map <leader>r :NERDTreeRefresh<CR>

" Open NERDTree automatically when Vim starts
autocmd vimenter * silent! NERDTree .
