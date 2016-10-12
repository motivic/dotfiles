# https://github.com/motivic/dotfiles

export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config"
# export TERM="xterm-256color"

# pyenv
# pyenv path
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
# pyenv enable shims and autocompletion
eval "$(pyenv init -)"
# pyenv build mirrors
export PYTHON_BUILD_MIRROR_URL="http://yyuu.github.io/pythons"
# pyenv auto-activate pyenv virtualenv
eval "$(pyenv virtualenv-init -)"

# cuDNN path
export LD_LIBRARY_PATH="/usr/local/cuda:$LD_LIBRARY_PATH"
