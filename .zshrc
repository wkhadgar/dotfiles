
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' completions 1
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' max-errors 15
zstyle ':completion:*' menu select=long
zstyle ':completion:*' original true
zstyle ':completion:*' prompt 'Off by %e typos:'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '/home/wkhadgar/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=1000
setopt autocd beep nomatch
bindkey -v
# End of lines configured by zsh-newuser-install

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' %b '

function venv_info {
  [ $VIRTUAL_ENV ] && echo ' '`basename $VIRTUAL_ENV`' '
}

function cmd_color {
  if [ $VIRTUAL_ENV ]; then 
    echo 'green'
  else
    echo 'blue'
  fi
}

export VIRTUAL_ENV_DISABLE_PROMPT=1
setopt PROMPT_SUBST
NEWLINE=$'\n'
PROMPT='%F{$(cmd_color)}╭%f %F{green}$(venv_info)%f%F{blue}  %~%f %F{yellow}${vcs_info_msg_0_}%f${NEWLINE}%F{$(cmd_color)}╰ $%f '
alias grep='grep --color=auto'

# Shortcuts
alias cls=clear
alias ls='ls --color=auto'
alias sa='source ~/.zshrc; echo "ZSH aliases sourced."'
alias mconf='west build -t menuconfig'
#alias killall='killall -s 9'

# Bind Home, End, and Delete using terminfo values
bindkey -e
bindkey "^[[H"  beginning-of-line
bindkey "^[[F"  end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[6~" end-of-buffer-or-history
bindkey "^[[5~" beginning-of-buffer-or-history
