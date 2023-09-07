export PS1="\w$ "
set +H

setTerminalText () {
# echo works in bash & zsh
    local mode=$1 ; shift
    echo -ne "\033]$mode;$@\007"
}

tabtitle   () { setTerminalText 1 $@; }

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
alias clocale="export LANG=en_US.UTF-8;export LC_ALL=C"

export TERM=xterm-256color
export EDITOR=nvim

# stop tar adding special macos files to archive
export COPYFILE_DISABLE=true

# configs
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# homebrew
if [ -f ~/.homebrew_token.sh ]; then
    source ~/.homebrew_token.sh;
fi

export PATH="/opt/homebrew/sbin:/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/node@16/bin:$PATH"

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export PATH="/usr/local/opt/binutils/bin:$PATH"
export PATH="/usr/local/opt/m4/bin:$PATH"
export PATH="/usr/local/opt/file-formula/bin:$PATH"
export PATH="/usr/local/opt/perl@5.18/bin:$PATH"
export PATH="/usr/local/opt/apr/bin:$PATH"
export PATH="/usr/local/opt/apr-util/bin:$PATH"
export PATH="/usr/local/opt/unzip/bin:$PATH"

export BASH_COMPLETION_COMPAT_DIR=/usr/local/etc/bash_completion.d
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
export PATH="/usr/local/opt/gettext/bin:$PATH"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# web dev
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
alias devchrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222 --user-data-dir=/users/kari/devchrome'

