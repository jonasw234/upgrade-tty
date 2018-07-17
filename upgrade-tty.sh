#!/bin/sh
echo 'This script is used to upgrade netcat shells to fully fledged shells.\n'
echo 'Don'\''t forget to use bash as your local shell, zsh won'\''t work!'
echo ''
echo 'Paste the first command from the clipboard into the remote shell.'
echo 'python -c '\''import pty; pty.spawn("/bin/bash")'\'' || python3 -c '\''import pty; pty.spawn("/bin/bash")'\''' | xclip -selection clipboard
echo -n 'Continue with any key.'
read ignore

echo 'Paste this command in your local shell'
echo 'stty raw -echo' | xclip -selection clipboard
echo -n 'Continue with any key.'
read ignore

echo 'Back in the remote shell just paste the commands from the clipboard.'
COLS=$(stty size | awk '{ print $2 }')
ROWS=$(stty size | awk '{ print $1 }')
echo "export SHELL=bash
export TERM=$TERM
stty cols $COLS rows $ROWS
reset" | xclip -selection clipboard
