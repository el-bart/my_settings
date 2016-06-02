# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/login.defs
#umask 022

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# set PATH so it includes user's private bin if it exists
#if [ -d ~/bin ] ; then
#  export PATH=~/bin:"${PATH}"
#fi

source ~/.profile_common
