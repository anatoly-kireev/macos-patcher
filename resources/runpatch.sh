#!/bin/bash

parameters="${1}${2}${3}${4}${5}${6}${7}${8}${9}"

Path_Variables()
{
	script_path="${0}"
	directory_path="${0%/*}"

	patch_path="$directory_path/patch.sh"

	if [[ -f "/patch.sh" ]]; then
		patch_path="/patch.sh"
	fi

	if [[ -f "/Volumes/Image Volume/patch.sh" ]]; then
		patch_path="/Volumes/Image Volume/patch.sh"
	fi
}

Run(){
	"$patch_path" $parameters
}

Path_Variables
Run