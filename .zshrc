################################################################################
# This file is sourced only for interactive shells. It
# should contain commands to set up aliases, functions,
# options, key bindings, etc.
#
# Global Order: zshenv, zprofile, zshrc, zlogin
################################################################################
aliasFile=~/.bash_aliases

if [ -f ~/.zshgrml ]; then
   source ~/.zshgrml
fi

#ensure aliases file is loaded
if [ -f $aliasFile ]; then
   . $aliasFile
fi

if [ -f ~/.zshaliases ]; then
   source ~/.zshaliases
fi

if [ -f ~/.zshfunctions ]; then
   source ~/.zshfunctions
fi

bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
export KEYTIMEOUT=1
