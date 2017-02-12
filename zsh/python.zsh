# https://github.com/motivic/dotfiles

# virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

# Add libsvm to the path
PYTHONPATH=$PYTHONPATH:$HOME/code/miscellaneous/libsvm/python

# Add caffe to the path
PYTHONPATH=$PYTHONPATH:$HOME/code/caffe/python
