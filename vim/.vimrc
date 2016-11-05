" https://github.com/motivic/dotfiles
"
" Author: Johnson Jia

" ***************
" *** VIMPLUG ***
" *************** {{{
call plug#begin('~/.vim/plugged')

" *** FILE SYSTEM *** {{{
" NERD Tree: a tree explorer plugin for vim
Plug 'scrooloose/nerdtree'
" ctrlp: fuzzy file, buffer, mru, tag, etc finder
Plug 'ctrlpvim/ctrlp.vim'
" }}}

" *** TEXT MANIPULATION *** {{{
" vim alignment plugin
Plug 'junegunn/vim-easy-align'
" vim surround
Plug 'tpope/vim-surround'
" emmet for vim
Plug 'mattn/emmet-vim'
" toggle undo tree
Plug 'sjl/gundo.vim'
" }}}

" *** MOVEMENT *** {{{
" easymotion: vim motions on speed!
Plug 'easymotion/vim-easymotion'
" }}}

" *** SEARCHING *** {{{
" vim plugin for the_silver_searcher
Plug 'rking/ag.vim'
" }}}

" *** DEV TOOLS *** {{{
" neomake: A plugin for asynchronous :make using Neovim's job-control
" functionality
Plug 'benekastah/neomake'
" NERD Commenter: vim plugin for intensely orgasmic commenting
Plug 'scrooloose/nerdcommenter'
" snippet track engine solution for vim
Plug 'sirver/ultisnips'
" snippet collection 
Plug 'honza/vim-snippets'
" deoplete: dark powered neo-completion
function! DoRemote(arg)
	UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
" vim-css-color
Plug 'skammer/vim-css-color'
" }}}

" *** GIT *** {{{
" fugitive: it wrapper
Plug 'tpope/vim-fugitive'
" vim-gitgutter: A vim plugin which shows git diff in the gutter (sign column)
" and stages/reverts hunks
Plug 'airblade/vim-gitgutter'
" vimscript for gist
Plug 'mattn/gist-vim'
" plugin for NERDTree
Plug 'xuyuanp/nerdtree-git-plugin'
" }}}

" *** THEME *** {{{
" vim-colors-solarized: precision colorscheme for the vim text editor
Plug 'altercation/vim-colors-solarized'
" vim-devicons: add font icons
Plug 'ryanoasis/vim-devicons'
" vim-airline: theme
Plug 'vim-airline/vim-airline-themes'
" }}}

" *** POWERLINE *** {{{
" vim-airline: lean & mean status/tabline for vim that's light as air
Plug 'bling/vim-airline'
" load powerline fonts
" let g:airline_powerline_fonts = 1
" }}}

" *** JAVASCRIPT *** {{{
" vim-javascript: vastly improved javascript indentation and syntax support
" in vim
Plug 'pangloss/vim-javascript'
" coffeescript support for vim
Plug 'kchmck/vim-coffee-script'
" typescript syntax file for vim
Plug 'leafgarland/typescript-vim'
" syntax for javascript libraries
Plug 'jelera/vim-javascript-syntax'
" repo for UltiSnips for angular
Plug 'matthewsimo/angular-vim-snippets'
" }}}

" *** PYTHON *** {{{
" deoplete source for python
Plug 'zchee/deoplete-jedi'
" autocompletion and static analysis library for python
Plug 'davidhalter/jedi'
" }}}

" *** GO LANG *** {{{
" go development plugin for vim
Plug 'fatih/vim-go'
" }}}

" *** RUBY *** {{{
" vim/ruby configuration
Plug 'vim-ruby/vim-ruby'
" rails.vim: Ruby on Rails power tools
Plug 'tpope/vim-rails'
" }}}

" *** C++ *** {{{
" vim plugin that use clang for completing C/C++ code
Plug 'rip-rip/clang_complete'
" additional vim syntax highlighting for C++
Plug 'octol/vim-cpp-enhanced-highlight'
" C/C++ IDE
Plug 'c.vim'
" vim plugin for clang-format
Plug 'rhysd/vim-clang-format'
" }}}

call plug#end()
" }}}

" ***************
" *** GENERAL ***
" *************** {{{

" *** UTF-8 *** {{{
  set encoding=utf-8
" }}}

" *** COLORS *** {{{
syntax on
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized
" }}}

" *** SPACE & TABS *** {{{
syntax enable
set tabstop=4		" tabstop
set softtabstop=4	" tab behavior when editing
set shiftwidth=4    " reindent operations behavior
set expandtab		" tabs are spaces
" }}}

" *** UI CONFIG *** {{{
set relativenumber  " neovim hybrid number mode
set number

filetype indent on  " load filetype-specific indent files
set wildmenu        " visual autocomplete for command menu
set lazyredraw      " redraw only when we need to
set showmatch       " match parenthesis
" }}}

" *** SEARCHING *** {{{
set incsearch       " search as characters are entered
set hlsearch!       " toggle highlight matches
nnoremap <F3> :set hlsearch!<CR>
" }}}

" *** MAPPING *** {{{ 
" map ; to :, ;; to ;
map ; :
noremap ;; ;
" }}}

" *** FOLDING *** {{{
" space open/closes folds
nnoremap <space> za
" set foldmethod=indent   "fold based on indent level
" }}}

" *** HIGHLIGHT *** {{{
" highlight last inserted text
nnoremap gV `[v`]
" }}}

" *** LEADER SHORTCUTS *** {{{
let mapleader=","   " leader is comma
" toggle gundo (gundo.vim)
nnoremap <leader>u :GundoToggle<CR>
" }}}

" *** SAVE SESSION *** {{{ 
" save session
nnoremap <leader>s :mksession<CR>
" }}}

" *** BACKUP *** {{{
" backup
set backup
set backupdir=/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*,/var/tmp/*
set directory=/var/tmp,/tmp
set writebackup
" }}}

" *** PYTHON *** {{{
" load python
let g:python_host_prog = '/usr/bin/python'
" }}}

" *** C++ *** {{{
" set clang path 
let g:clang_library_path='/usr/lib/x86_64-linux-gnu/libclang-3.8.so.1'
" load clang
let g:clang_use_library = 1
" }}}

source ~/dotfiles/vim/.vim/plugins/deoplete.vim
source ~/dotfiles/vim/.vim/plugins/ctrlp.vim
source ~/dotfiles/vim/.vim/plugins/devicons.vim 
source ~/dotfiles/vim/.vim/plugins/nerdtree.vim 
" }}}

" vim:foldmethod=marker:foldlevel=0
