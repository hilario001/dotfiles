autoload -Uz compinit edit-command-line
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
autoload chpwd_recent_dirs cdr add-zsh-hook

chpwd_recent_dirs cdr add-zsh-hook
compinit

source <(fzf --zsh)
_comp_options+=(globdots)

zle -N edit-command-line
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

setopt hist_ignore_all_dups
setopt share_history
setopt autocd

#export PS1=""
export PS1="%B%~%b "
#export RPROMPT="%F{#ffee32}%@%f"
export HISTFILE=~/.cache/zsh/history

zmodload zsh/complist
HISTSIZE=1000
SAVEHIST=1000

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS} '=*=16' 'ma=30;48;5;11'
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true

#if [[ $TERM = linux ]]; then
#        echo -e "\033[?112c"
#        PROMPT_COMMAND='echo -ne "\e[?112c"'
#fi

exit_zsh() {exit}

en()
{ 
        if [[ $# -gt 0 ]]; then
                printf $1 | ~/.local/bin/cambridge-cli
        else
                ~/.local/bin/cambridge-cli
        fi
}

vm()
{
        vim -c "h $1|only"
}

clear-screen-and-scrollback()
{
        printf '\x1Bc'
        zle clear-screen
}

pdf()
{
        zathura ~/cs/pdf/*$1*.pdf &;
}

timer()
{
        clear;
        printf "$1\n";
        while true;
        do
                printf "%s\r" $(date +%l:%M:%S);
        done
}

cd()
{
    if [ $# -eq 0 ];
    then
        builtin cd;
        return;
    fi

    builtin cd $1 && ls -lX;
}

zle -N exit_zsh
zle -N clear-screen-and-scrollback

bindkey '^l' clear-screen-and-scrollback
bindkey '^d' exit_zsh
bindkey '^r' history-incremental-search-backward
bindkey '^[[a' up-line-or-beginning-search
bindkey '^[[b' down-line-or-beginning-search

bindkey -M vicmd v edit-command-line
bindkey -M viins '^a' beginning-of-line
bindkey -M viins '^e' end-of-line

bindkey -M menuselect '^o' vi-backward-char
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

alias csi="chicken-csi -q"
alias csc="chicken-csc"
alias zr="source ~/.config/zsh/.zshrc"
alias x="startx"
alias po="poweroff"
alias sp="systemctl suspend"
alias ls="ls -lX"
