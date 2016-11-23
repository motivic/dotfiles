# https://github.com/motivic/dotfiles

# global aliases
alias -g ..='cd ..'
alias -g ..='..' 
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'

#alias ls="ls -F --color=auto"
#alias l="ls -lAh"
alias cls=clear

# neovim over vim
alias vim=nvim

# uncompress git blob
alias git-deflate="perl -MCompress::Zlib -e 'undef $/; print uncompress(<>)'"
