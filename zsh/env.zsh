# https://github.com/motivic/dotfiles

export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config"
# export TERM="xterm-256color"

# set up conda 4.4
# . $HOME/.pyenv/versions/miniconda3-latest/pkgs/conda-4.4.5-py36_0/etc/profile.d/conda.sh 
# conda activate base

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# pyenv enable shims and autocompletion
eval "$(pyenv init -)"

# pyenv build mirrors
export PYTHON_BUILD_MIRROR_URL="http://yyuu.github.io/pythons"

# pyenv auto-activate pyenv virtualenv
eval "$(pyenv virtualenv-init -)"

# CUDA path
export CUDA_HOME=/usr/local/cuda
export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}

# cuDNN path
export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# IntelliJ Ultimate path
export PATH=$HOME/.local/share/umake/ide/idea-ultimate/bin:$PATH

# PyCharm Pro path
export PATH=$HOME/.local/share/umake/ide/pycharm-professional/bin:$PATH
