# prompt
PROMPT='%F{#13CA2D}%n %F{#A2E655}%~ %F{#13CA2D}∴%f ' #∂λΔΣ∫∴

# fastfetch on start with specific modules
if [[ $- == *i* && -n "$WEZTERM_PANE" ]]; then
    if command -v fastfetch &> /dev/null; then
        HEX1="38;2;19;202;45"
        HEX2="38;2;162;230;85"

        fastfetch --logo popos_small --logo-padding-left 3 --color "$HEX1" --logo-color-1 "$HEX2" \
                  --structure title:separator:os:uptime:shell::cpu:gpu:memory:datetime
    fi
    echo ""
fi

# options
setopt CORRECT
setopt CORRECT_ALL
setopt EXTENDED_GLOB
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_SPACE
HISTFILE=~/.zsh_history
HISTSIZE=3000
SAVEHIST=3000

# directory stack alias
alias d='dirs -v'

# history search
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search
bindkey '^[OA' up-line-or-beginning-search
bindkey '^[OB' down-line-or-beginning-search
bindkey '^R' history-incremental-search-backward  # Ctrl+R (if you don't remember start of command)

# completion system
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
autoload -Uz colors && colors

eval $(dircolors -b) 
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -A --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias reload='source ~/.zshrc'
alias open='xdg-open . 2>/dev/null || echo "No GUI file manager"'

# clean PATH
typeset -U PATH
