#!/bin/bash

gexec=$GIT_CRYPT
if [[ $gexec == "" ]]; then
	gexec="git-crypt"
fi
remote="$([[ $(git remote | wc -l) -eq 1 ]] && git remote || git remote | grep "^origin$")"
key="$(basename `git config --local remote.${remote}.url`)"
key=${key//./_}
key=`echo ${key^^}`
b64=`echo -n ${!key}`
if [[ $b64 != "" ]]; then
	echo -n $b64 | base64 --decode > "./${key}"
	$gexec unlock "./${key}"
	echo "git-crypt unlocked for ${key}"
else
	echo "git-crypt ignored for ${key}"
fi