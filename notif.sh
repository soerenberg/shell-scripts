#!/bin/bash
message=$1
exec_command=${@:2}

echo run $exec_command
time $exec_command && notify-send success $message || notify-send fail $message
echo done $exec_command
