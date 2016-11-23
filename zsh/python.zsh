# https://github.com/motivic/dotfiles

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

# virtualenvwrapper
# source $PYENV_ROOT/shims/virtualenvwrapper.sh
