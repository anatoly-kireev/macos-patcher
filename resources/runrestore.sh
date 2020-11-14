#!/bin/bash

parameters="${1}${2}${3}${4}${5}${6}${7}${8}${9}"

Path_Variables()
{
	script_path="${0}"
	directory_path="${0%/*}"

	restore_path="$directory_path/restore.sh"

	if [[ -f "/restore.sh" ]]; then
		restore_path="/restore.sh"
	fi

	if [[ -f "/Volumes/Image Volume/restore.sh" ]]; then
		restore_path="/Volumes/Image Volume/restore.sh"
	fi
}

Run(){
	"$restore_path" $parameters
}

Path_Variables
Run