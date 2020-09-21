# Profiling ======================================================
PROFILE_STARTUP=false
if [[ "$PROFILE_STARTUP" == true ]]; then
    # http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
    zmodload zsh/zprof
    # PS4=$'%D{%M%S%.} %N:%i> '
    # exec 3>&2 2>$HOME/tmp/startlog.$$
    # setopt xtrace prompt_subst
fi
# ====Profiling ==================================================

HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob notify
unsetopt autocd
bindkey -e
zstyle :compinstall filename '/Users/naitian/.zshrc'

# https://gist.github.com/ctechols/ca1035271ad134841284
autoload -Uz compinit
compinit -C;


#==========#
# Plugins! #
#==========#

# zplug was installed using brew
# export ZPLUG_HOME=/usr/local/opt/zplug
# source $ZPLUG_HOME/init.zsh

#export NVM_LAZY_LOAD="false"
## zplug "plugins/git", from:oh-my-zsh
#zplug "plugins/history-substring-search", from:oh-my-zsh
## zplug "plugins/shrink-path", from:oh-my-zsh

## zplug "lukechilds/zsh-nvm"
#zplug "zsh-users/zsh-autosuggestions"

#zplug load

source ~/.zsh/path.zsh
source ~/.zsh/variables.zsh
source ~/.zsh/alias.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/git.zsh

#
# Prompt
#
setopt PROMPT_SUBST

__responsive_rprompt () {
    if [[ ${COLUMNS} -gt $SMALL_WIDTH ]]
    then
        prompt="%8F%1~%10F%B$(__git_ps1)%b"
    else
        if [[ "$(current_branch)" != "" ]]
        then
            prompt="%8F%1~ %B$(current_branch)%b"
        else
            prompt='%8F%1~'
        fi
    fi
    echo $prompt
}

# function preexec () {
#     timer=$(($(gdate +%s%N) / 1000000))
# }

# function precmd() {
#     if [ $timer ] && [[ ${COLUMNS} -gt $SMALL_WIDTH ]]; then
#         RPROMPT="$(__responsive_rprompt)"
#         now=$(($(gdate +%s%N) / 1000000))
#         elapsed=$(($now-$timer))
#         RPROMPT=${RPROMPT}"%8F ${elapsed}ms%{$reset_color%}"
#         unset timer
#     else
#         RPROMPT="$(__responsive_rprompt)"
#     fi
# }

PROMPT='%111F'  # Username
PROMPT=${PROMPT}'%(?,%10F,%130F)❯%f '  # Caret
RPROMPT='$(__responsive_rprompt)'


## History
#bindkey '^[[A' history-substring-search-up
#bindkey '^[[B' history-substring-search-down
#HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='bold'
#HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='fg=red,bold'

# Git
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Suggestion
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=239"


## Direnv and Autoenv
AUTOENV_ENABLE_LEAVE=true
_direnv_hook() {
    eval "$(direnv export zsh)";
}
typeset -ag precmd_functions;
if [[ -z ${precmd_functions[(r)_direnv_hook]} ]]; then
    precmd_functions+=_direnv_hook;
fi

show_virtual_env() {
    if [ -n "$VIRTUAL_ENV" ]; then
        echo "($(basename $VIRTUAL_ENV)) ❯"
    fi
}
PS1='$(show_virtual_env)'$PS1


# rbenv takes ~100ms
#eval "$(rbenv init -)"


## Profiling ======================================================
## Entirety of my startup file... then
## if [[ "$PROFILE_STARTUP" == true ]]; then
##     unsetopt xtrace
##     exec 2>&3 3>&-
## fi
## ====Profiling ==================================================

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#if [[ "$PROFILE_STARTUP" == true ]]; then
#    zprof
#fi
export PATH="/usr/local/anaconda3/bin:$PATH"
