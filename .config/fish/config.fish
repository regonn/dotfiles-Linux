set -x LANG ja_JP.UTF-8
set -x LC_ALL $LANG
set -x PATH $PATH $HOME/.config/yarn/global/node_modules/.bin
set -x PATH $PATH $HOME/.pyenv/bin
set -x GTK_IM_MODULE fcitx
set -x XMODIFIERS @im=fcitx
set -x QT_IM_MODULE fcitx
. (pyenv init - | psub)
rbenv init - | source

# Base16 Shell
if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-default-dark.sh
end

alias vim='/usr/bin/nvim'
