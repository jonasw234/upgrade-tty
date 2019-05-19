# upgrade-tty
Upgrades nc tty functionality

Requires: xclip

During penetration testing you often create a reverse shell to a system via nc.  However this shell is limited in that it doesn’t have a pretty prompt, tab autocompletion and vi doesn’t work properly.
This script is a collection of commands that can be run to upgrade your nc tty.

First step is to get a nc shell.  Then start the `upgrade-tty.sh` script in another terminal which has the same size as your terminal with the nc shell.
The first command will be pasted into the nc shell.  Next, background the nc shell and paste the next command into your local bash shell.  This should bring you back into your nc shell automatically.
Now paste the last command in the nc shell.

I learned this from the YouTuber IppSec, so give him some love! I just added the scripting around it because I found it to tedious to type the commands by hand everytime.
