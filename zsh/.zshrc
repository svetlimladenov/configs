# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# https://github.com/wting/autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# Initialize the nodenv 
eval "$(nodenv init -)"

# Pyenv setup
# eval "$(pyenv init -)"

# Renv setup
# eval "$(rbenv init - zsh)"

# Aliases
alias g="git"
alias c="clear"
alias yr="yarn"
alias k="kubectl"

# Attaches tmux to the last session; creates a new session if none exists.
alias t='tmux attach || tmux new-session'

alias vi='nvim'
alias vim='nvim'

# Creates and moves to a new dir
take () {
  mkdir "$1"
  cd "$1"
}

source "$HOME/Code/macstadium/.orka-tools.zsh"

# Turn off all beeps
unsetopt BEEP
# Turn off autocomplete beeps
unsetopt LIST_BEEP

bindkey -v

export PATH="/Users/svetlinmladenov/go/bin:$PATH"
export PATH="/Users/svetlinmladenov/.local/bin:$PATH"

export EDITOR=nvim
export VISUAL=vi
export KUBE_EDITOR=$EDITOR

. /opt/homebrew/opt/asdf/libexec/asdf.sh
[[ kubectl ]] && source <(kubectl completion zsh)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
