eval "$(/opt/homebrew/bin/brew shellenv)"

alias py=python3
alias python=python3
alias gitlog="git log --all --graph --decorate --oneline"
alias aseprite="~/aseprite/build/bin/aseprite &"
alias imgcat="wezterm imgcat"
alias cat="bat --theme=zenburn"
# alias ls="eza --icons=always" in .zshrc file
# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"
alias cd="z"
