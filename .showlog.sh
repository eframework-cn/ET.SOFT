#!/bin/sh

if [ -d ./.git ] || [ -f ./.git ]; then
	nohup TortoiseGitProc.exe /command:log /path:./ /closeonend:2 >/dev/null 2>&1 &
else
	nohup TortoiseProc.exe /command:log /path:./ /closeonend:2 >/dev/null 2>&1 &
fi