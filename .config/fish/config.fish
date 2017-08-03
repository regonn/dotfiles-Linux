set -x LANG ja_JP.UTF-8
set -x LC_ALL $LANG
set -x PATH $PATH $HOME/.config/yarn/global/node_modules/.bin
set -x GTK_IM_MODULE fcitx
set -x XMODIFIERS @im=fcitx
set -x QT_IM_MODULE fcitx
set -gx PYENV_ROOT "$HOME/.pyenv"
set -x PATH $PATH "$PYENV_ROOT/shims"
status --is-interactive; and . (pyenv init - | psub)
. (pyenv init - | psub)
rbenv init - | source

# Base16 Shell
if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-default-dark.sh
end

alias vim='/usr/bin/nvim'
