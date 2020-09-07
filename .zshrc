autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Add yarn to path
export PATH=/home/dark/.yarn/bin:$PATH

HISTFILE=~/.cache/zsh/history
HISTSIZE=1000
SAVEHIST=1000

bindkey -v
export KEYTIMEOUT=1

# Vi console cursor

function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# Completion

zstyle :compinstall filename '/home/gg/.zshrc'
autoload -Uz compinit
zstyle ':completion:*' menu select
compinit
_comp_options+=(globdots)

# Basic
export TERM=xterm-256color
alias ls='ls --color=auto'

# Arrow history search
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
