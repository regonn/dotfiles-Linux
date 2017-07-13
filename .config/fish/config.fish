set -x LANG ja_JP.UTF-8
set -x LC_ALL $LANG
set -x PATH $PATH $HOME/.config/yarn/global/node_modules/.bin
set -x PATH $PATH $HOME/.pyenv/bin
. (pyenv init - | psub)
rbenv init - | source

