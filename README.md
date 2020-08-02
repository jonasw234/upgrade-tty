# upgrade-tty
Upgrades nc tty functionality

Requires: xclip, xdotool

During penetration testing you often create a reverse shell to a system via nc.  However this shell is limited in that it doesn’t have a pretty prompt, tab autocompletion and vi doesn’t work properly.
This script is a collection of commands that can be run to upgrade your nc tty.

First step is to get a nc shell.  Then start the `upgrade-tty.sh` script with a keyboard shortcut.  Everything else should be done automatically by xdotool.

Commands that are run on the remote system are prefixed by a space to prevent saving them to history.

I learned this from the YouTuber [IppSec](https://www.youtube.com/channel/UCa6eh7gCkpPo5XXUDfygQQA), so give him some love! I just added the scripting around it because I found it too tedious to type the commands by hand everytime.
