#!/bin/bash
# Author: jlj @ ctrl-c.club
# Suggestions for improvement most welcome!
#
# Designed to be triggered by systemd's poweroff.target,
# running as: xterm -e <this script>
#
# Checks to see if more than one instance of the script
# is already running
# If not, do a delayed shutdown that can be cancelled
# If it is, kill the current process
#
script_name=`basename $0`
matched_pid_name=$(pgrep -fl "^xterm.*${script_name}" | wc -w)
if [ $matched_pid_name -le 2 ]; then
	echo "${script_name}: Poweroff requested! Will do a delayed halt instead."
	`shutdown -h +2`
	sleep 150
else
	echo "${script_name}: Instance already running. Kill imminent."
	`sleep 5 && kill $$`
fi