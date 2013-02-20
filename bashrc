# ~/.bashrc: executed by bash(1) for non-login shells. -*- bash -*-
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

umask 0002

export HTTP_PROXY="http://wwwcache.sanger.ac.uk:3128"
export HTTPS_PROXY="http://wwwcache.sanger.ac.uk:3128"
export NO_PROXY="localhost, 127.0.0.1, .sanger.ac.uk, www.ensembl.org"
export http_proxy="$HTTP_PROXY"
export https_proxy="$HTTPS_PROXY"
export no_proxy="$NO_PROXY"
export PATH="$HOME/tools:$HOME/bin:$PATH"
export GIT_PROXY_COMMAND=git-proxy-squid

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# if in vm source global bashrc
if test -r "/opt/t87/global/conf/bashrc"; then
    source "/opt/t87/global/conf/bashrc"
# htgt env setup
elif [ -f /software/team87/brave_new_world/bin/htgt-env.pl ] ; then
    exec /software/bin/perl -I/software/team87/brave_new_world/lib/perl5 \
                            -I/software/team87/brave_new_world/lib/perl5/x86_64-linux-thread-multi \
    /software/team87/brave_new_world/bin/htgt-env.pl
fi

source "$HOME/.bashrc_common"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#Add firefox 10 to path, needed for imits tests
PATH=$HOME/applications/firefox/firefox:$PATH

echo rvm_path='~/.rvm' > ~/.rvmrc
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
