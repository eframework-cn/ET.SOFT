#!/bin/sh

remote="$([[ $(git remote | wc -l) -eq 1 ]] && git remote || git remote | grep "^origin$")"
url="$(git config --local remote.${remote}.url)"
arr=(${url//// })
len=${#arr[@]}
repo=${arr[len-1]}

key="~/.ssh/${repo}"
echo git-crypt: $key

if [ -f $key ]; then
	git-crypt unlock $key
else
	read -t 5 -p "warning: git-crypt was invalid, input 'init' to setup: " ret
	echo $ret
	if [[ $ret == "init" ]]
	then
		git-crypt init
		git-crypt export-key $key
		echo "git-crypt has been created."
	fi
fi

read -t 5 -p "git-crypt has been inited."