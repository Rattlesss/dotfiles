export PATH="/usr/local/bin:$PATH"

# Activate zsh-autosuggestions (autofills terminal commands)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Activate zsh-syntax-highlighting (provides syntax highlighting)
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Activate zoxide (smart cd jumper)
eval "$(zoxide init zsh)"

# Activate Starship Prompt
eval "$(starship init zsh)"

# Activate FZF Fuzzy Finder
source <(fzf --zsh)

# Activate direnv
eval "$(direnv hook zsh)"

# Enable standard word-skipping shortcuts
bindkey -e

# Tool replacements
alias cat='bat'
alias ls='eza --icons'
alias ll='eza -l --icons --git'
alias la='eza -la --icons --git'
alias lt='eza --tree --icons'
alias du='dust'
alias df='duf'
alias top='btop'

# fun banner on new shell
fortune -s computers | cowsay -f stegosaurus | lolcat
