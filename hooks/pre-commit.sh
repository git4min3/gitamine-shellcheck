#!/usr/bin/env bash

BIN=shellcheck

# The reading options part
while [[ $# -gt 0 ]] && [[ ."$1" = .--* ]] ;
do
    opt="$1";
    shift;              #expose next argument
    case "$opt" in
        "--" ) break 2;;
        "--bin="* )
           BIN="${opt#*=}";;
   esac
done

FILES=$(gitamine f:c | grep -E "(^run$|\\.bash$|\\.sh$)"  | tr '\r\n' ' ')
LINES=${#FILES}

if [ "$LINES" -gt "1" ]
then
    eval "${BIN} --color=always ${FILES}"
fi
