#!/bin/sh

_ITERM_DIR="$HOME/Library/Application Support/iTerm2"
_ITERM_AUTOLAUNCH_DIR="$_ITERM_DIR/Scripts/AutoLaunch"

if [ ! -d "$_ITERM_DIR" ]
then
    echo "ERROR: iTerm2 does not appear to be installed, exiting..."
    exit 1
fi

if [ ! -d "$_ITERM_AUTOLAUNCH_DIR" ]
then
    mkdir -p $_ITERM_AUTOLAUNCH_DIR
fi

cp ./iterm-darkmode-switch.py "$_ITERM_AUTOLAUNCH_DIR/"

unset _ITERM_AUTOLAUNCH_DIR _ITERM_DIR