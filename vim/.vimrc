"ouhttps://github.com/motivic/dotfiles
"
" Author: Johnson Jia

" ***************
" *** VIMPLUG ***
" ***************
call plug#begin('~/.vim/plugged')

" *** FILE SYSTEM ***
" NERD Tree: a tree explorer plugin for vim
Plug 'scrooloose/nerdtree'
" ctrlp: fuzzy file, buffer, mru, tag, etc finder
Plug 'kien/ctrlp.vim'

" *** TEXT MANIPULATION ***
" vim alignment plugin
Plug 'junegunn/vim-easy-align'
" vim surround
Plug 'tpope/vim-surround'
" emmet for vim
Plug 'mattn/emmet-vim'

" *** MOVEMENT ***
" easymotion: vim motions on speed!
Plug 'easymotion/vim-easymotion'

" *** DEV TOOLS *** 
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

" *** GIT ***
" fugitive: it wrapper
Plug 'tpope/vim-fugitive'
" vim-gitgutter: A vim plugin which shows git diff in the gutter (sign column)
" and stages/reverts hunks
Plug 'airblade/vim-gitgutter'

" *** THEME ***
" vim-colors-solarized: precision colorscheme for the vim text editor
Plug 'altercation/vim-colors-solarized'

" *** POWERLINE ***
" vim-airline: lean & mean status/tabline for vim that's light as air
Plug 'bling/vim-airline'

" *** JAVASCRIPT ***
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

" *** PYTHON ***
" deoplete source for python
Plug 'zchee/deoplete-jedi'
" autocompletion and static analysis library for python
Plug 'davidhalter/jedi'

" *** GO LANG ***
" go development plugin for vim
Plug 'fatih/vim-go'

call plug#end()

source ~/dotfiles/vim/.vim/plugins/deoplete.vim
