export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ys"

plugins=( git zsh-autosuggestions)

alias c="clear"
alias reload="source ~/.zshrc"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.config/nvim/init.lua"
alias grc="vim ~/.config/ghostty/config.ghostty"
alias vim="nvim"
alias v="nvim"
alias updatedots="~/Projects/dot-files/update.sh"
alias dnf="dnf5"

source $ZSH/oh-my-zsh.sh

export PATH=~/.local/bin:$PATH
export PATH=~/.local/zig:$PATH

# opencode
export PATH=/home/gnascimento/.opencode/bin:$PATH
