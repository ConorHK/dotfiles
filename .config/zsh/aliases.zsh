alias cls="clear"
alias shnow="sudo shutdown now"
alias pdf="zathura"
alias p="sudo pacman"
alias ls="exa --icons"
alias ra="ranger"
alias vim="nvim"
alias gt="log --graph --decorate --pretty=oneline --abbrev-commit"
alias gs="git status"
alias gc="git commit"
alias ga="git add"
alias gaa="git add --all"

vs () {
  session=${1:-'Session'}
  suffix='.vim'
  vim -S $SESSIONS/$session$suffix
}
