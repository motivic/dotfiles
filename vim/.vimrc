" https://github.com/motivic/dotfiles
"
call plug#begin('~/.vim/plugged')

" Vim alignment plugin
Plug 'junegunn/vim-easy-align'

" NERD Tree: a tree explorer plugin for vim
Plug 'scrooloose/nerdtree'

" NERD Commenter: vim plugin for intensely orgasmic commenting
Plug 'scrooloose/nerdcommenter'

" neomake: A plugin for asynchronous :make using Neovim's job-control
" functionality
Plug 'benekastah/neomake'

" fugitive: Git wrapper
Plug 'tpope/vim-fugitive'

" vim-airline: lean & mean status/tabline for vim that's light as air
Plug 'bling/vim-airline'

" vim-colors-solarized: precision colorscheme for the vim text editor
Plug 'altercation/vim-colors-solarized'

" ctrlp: fuzzy file, buffer, mru, tag, etc finder
Plug 'kien/ctrlp.vim'

" vim-gitgutter: A vim plugin which shows git diff in the gutter (sign column)
" and stages/reverts hunks
Plug 'airblade/vim-gitgutter'

" vim-javascript: vastly improved javascript indentation and syntax support
" in vim
Plug 'pangloss/vim-javascript'

" easymotion: vim motions on speed!
Plug 'easymotion/vim-easymotion'

" deoplete: dark powered neo-completion
function! DoRemote(arg)
	UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

call plug#end()
