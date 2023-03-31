Set Vim options
set nocompatible              " be iMproved, required
set hidden                    " allow switching between buffers without saving
set mouse=a                   " enable mouse support
set number                    " display line numbers
filetype off                  " required

set tabstop=2
set shiftwidth=2
set expandtab
set guifont=YOUR_FONT_NAME:h11

map <C-z> <Nop>
map <C-s> :w<CR>
nnoremap <C-S-Left>  v<Left>
nnoremap <C-S-Right> v<Right>
nnoremap <C-S-Up>    v<Up>
nnoremap <C-S-Down>  v<Down>
vnoremap <Tab>  >gv
nnoremap <C-f> /
nnoremap <C-h> :%s/
vnoremap <C-a> ggVG
nnoremap <C-d> :t.<CR>
nnoremap <C-z> u
inoremap <C-z> <C-o>u
vnoremap <C-z> <C-u>
nnoremap <C-y> <C-r>
inoremap <C-y> <C-o><C-r>
vnoremap <C-y> <C-r>
nnoremap <C-S-h> :Prettier<CR>

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add plugins"
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/IndexedSearch'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'agude/vim-eldar'
Plugin 'Xuyuanp/yanil'
Plugin 'preservim/nerdcommenter'
Plugin 'tomasiser/vim-code-dark'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'ap/vim-css-color'
Plugin 'SirVer/ultisnips'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-unimpaired'
Plugin 'ryanoasis/vim-devicons'
Plugin 'prettier/vim-prettier'

call vundle#end()
filetype plugin indent on

" Configure NERDTree
let g:NERDTreeChDirMode = 2
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 30
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

let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ 'Modified'  :'✹',
    \ 'Staged'    :'✚',
    \ 'Untracked' :'✭',
    \ 'Renamed'   :'➜',
    \ 'Unmerged'  :'═',
    \ 'Deleted'   :'✖',
    \ 'Dirty'     :'✗',
    \ 'Ignored'   :'☒',
    \ 'Clean'     :'✔︎',
    \ 'Unknown'   :'?',
    \ }

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeFileExtensionIconList = [
    \['html', 'file-text'],
    \['css', 'file-text'],
    \['js', 'file-text'],
    \['json', 'file-text'],
    \['md', 'file-text'],
    \['txt', 'file-text'],
    \['xml', 'file-text'],
    \['zip', 'file-zip'],
    \['py', 'file-code'],
    \['php', 'file-code'],
    \['vim', 'file-code'],
    \]

let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1

" Define NERDTree key mappings
map <C-n> :NERDTreeToggle<CR>
map <leader>n :NERDTreeFind<CR>
map <leader>r :NERDTreeRefresh<CR>

" Open NERDTree automatically when Vim starts
autocmd vimenter * silent! NERDTree .

colorscheme codedark
