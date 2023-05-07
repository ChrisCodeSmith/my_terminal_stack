#!/bin/bash
REPO_NAME="my_terminal_stack"
REPO_PATH="$HOME/repos/$REPO_NAME/"

# Add file names here
files=( .zshrc .vimrc .config/tmux/tmux.conf )

# Loop to copy the relvant conf fils into the repo
for file in "${files[@]}"
do
	cp $HOME/$file $REPO_PATH
done
