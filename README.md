* Delayed Poweroff *

This script is designed to be part of a system that will 'catch' power button presses (or other poweroff events) and replace them with a delayed halt instead (to hopefully better preserve the underlying filesystems).

The script itself was designed on Ubuntu 20.04, but should work on any Linux system with xterm installed.

As of the initial commit, I have not yet tested the associated systemd service. I will update this document when I confirm that it too works as intended.