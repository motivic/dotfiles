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

# copy and paste
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# neovim over vim
alias vim=nvim

# bat over cat
alias cat=bat

# prettyping over ping
alias ping=prettyping

# fzf over ctrl+r
alias preview="fzf --preview 'bat --color \"always\" {}'"
