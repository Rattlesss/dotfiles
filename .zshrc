if [[ -d /opt/homebrew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -d /home/linuxbrew/.linuxbrew ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# Tool replacements
alias cat='bat'
alias ls='eza --icons=auto'
alias ll='eza -l --icons=auto --git'
alias la='eza -la --icons=auto --git'
alias lt='eza --tree --icons=auto'
alias du='dust'
alias df='duf'
alias top='btop'

# Activate zoxide (smart cd jumper)
eval "$(zoxide init zsh)"
# Activate Starship Prompt
eval "$(starship init zsh)"

# Activate FZF Fuzzy Finder
source <(fzf --zsh)
# Activate direnv
eval "$(direnv hook zsh)"

# Activate zsh-autosuggestions (autofills terminal commands)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# Activate zsh-syntax-highlighting (provides syntax highlighting)
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fun banner on new shell
fortune -s computers | cowsay -f stegosaurus | lolcat
