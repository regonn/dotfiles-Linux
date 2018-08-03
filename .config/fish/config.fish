set -x LANG ja_JP.UTF-8
set -x LC_ALL $LANG
set -x PATH $PATH $HOME/.config/yarn/global/node_modules/.bin
set -x PATH $PATH "/opt/flutter/bin"
set -x GTK_IM_MODULE fcitx
set -x XMODIFIERS @im=fcitx
set -x DOTNET_SKIP_FIRST_TIME_EXPERIENCE true
set -x QT_IM_MODULE fcitx
set -gx PYENV_ROOT "$HOME/.pyenv"
set -x PATH $PATH "$PYENV_ROOT/shims"
set -x PATH $PATH "$HOME/.pub-cache/bin"
set -x XGBOOST_BUILD_VERSION master
set -x JULIA_HOME "/usr/bin"
set -x LIBJULIA "/usr/lib/libjulia.so"
set -x ANDROID_SDK_ROOT "$HOME/Android/sdk"
set -x ANDROID_HOME "$ANDROID_SDK_ROOT"
status --is-interactive; and . (pyenv init - | psub)
rbenv init - | source

# Base16 Shell
if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-default-dark.sh
end

alias vim='/usr/bin/nvim'
