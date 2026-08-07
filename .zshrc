if [[ -d /opt/homebrew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -d /home/linuxbrew/.linuxbrew ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

alias cat='bat'
alias ls='eza --icons'
alias ll='eza -l --icons --git'
alias la='eza -la --icons --git'
alias lt='eza --tree --icons'
alias du='dust'
alias df='duf'
alias top='btop'

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

source <(fzf --zsh)
eval "$(direnv hook zsh)"

source /home/linuxbrew/.linuxbrew/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/linuxbrew/.linuxbrew/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fun banner on new shell
fortune -s computers | cowsay -f stegosaurus | lolcat
