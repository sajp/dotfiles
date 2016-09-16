# ~/.bashrc: executed by bash(1) for non-login shells. -*- bash -*-
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# setup host specific bashrc if it exists
if test -r "$HOME/.bashrc_host"; then
    source "$HOME/.bashrc_host"
fi

# setup common config
source "$HOME/.bashrc_common"

# setup prompt
source "$HOME/.bashrc_prompt"

# source bash completion
source ~/.git-completion.bash

echo rvm_path='~/.rvm' > ~/.rvmrc
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/saj/.gvm/bin/gvm-init.sh" ]] && source "/home/saj/.gvm/bin/gvm-init.sh"
