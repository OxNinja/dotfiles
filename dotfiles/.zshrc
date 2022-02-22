export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH="$PATH:$HOME/.local/bin"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ninja/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

function mkcd() {
  mkdir -p "$1"
  cd "$1"
}

function notify() {
  notify-send -u "${1:-low}" "${2:-Task finished}" "${3:-Success}"
}

function commit() {
  lucky_commit "${1:-deadbeef}"
}

alias ls='ls --color=auto'
alias reload='source ~/.zshrc'
alias t='tmux a -t s1 || tmux new-session -t s1 && notify "normal" "Tmux new session" "You hsould load the previous session with <prefix> + C^r"'
alias c='xclip -sel clip'
alias rc='vim ~/.zshrc'
alias config='vim ~/.config/i3/config'
alias vim='nvim'
alias tm='vim ~/.tmux.conf'

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#7c6f64"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(starship init zsh)"
