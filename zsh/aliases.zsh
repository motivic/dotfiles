#https://github.com/motivic/dotfiles

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

## CLI tools as recommended by https://remysharp.com/2018/08/23/cli-improved
# [bat](https://github.com/sharkdp/bat)
alias cat='bat'

# [prettyping](https://github.com/denilsonsa/prettyping)
alias ping='/Users/johnsonjia/code/misc/prettyping'

# preview via [fzf](https://github.com/junegunn/fzf)
alias preview="fzf --preview 'bat --color \"always\" {}'"

# [tldr](https://tldr.sh/)
alias help='tldr'
