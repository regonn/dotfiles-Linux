set -x LANG ja_JP.UTF-8
set -x LC_ALL $LANG
set -x PATH $PATH $HOME/.config/yarn/global/node_modules/.bin
set -x PATH $PATH "/opt/flutter/bin"
set -x PATH $PATH $HOME/.rbenv/bin
set -x PATH $PATH $HOME/.local/bin
set -x PATH $PATH $HOME/.pyenv/shims
set -x GTK_IM_MODULE fcitx
set -x XMODIFIERS @im=fcitx
set -x DOTNET_SKIP_FIRST_TIME_EXPERIENCE true
set -x QT_IM_MODULE fcitx
set -x PATH $PATH "$HOME/.pub-cache/bin"
set -x XGBOOST_BUILD_VERSION master
set -x JULIA_HOME "/usr/bin"
set -x LIBJULIA "/usr/lib/libjulia.so"
set -x ANDROID_SDK_ROOT "$HOME/Android/Sdk"
set -x ANDROID_HOME "$ANDROID_SDK_ROOT"
eval (rbenv init - | source)
eval (pyenv init - | source)

# Base16 Shell
if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-default-dark.sh
end

alias vim='/usr/bin/nvim'

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/regonn/.config/yarn/global/node_modules/tabtab/.completions/serverless.fish ]; and . /home/regonn/.config/yarn/global/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/regonn/.config/yarn/global/node_modules/tabtab/.completions/sls.fish ]; and . /home/regonn/.config/yarn/global/node_modules/tabtab/.completions/sls.fish

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/regonn/google-cloud-sdk/path.fish.inc' ]; . '/home/regonn/google-cloud-sdk/path.fish.inc'; end
