# https://github.com/motivic/dotfiles

# PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# Overwrite XCode git
export PATH=/usr/local/opt/git/bin:$PATH


## CLI tools as recommended by https://remysharp.com/2018/08/23/cli-improved
# [bat](https://github.com/sharkdp/bat) style
export BAT_THEME="GitHub"

# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(nvim {})+abort'"
