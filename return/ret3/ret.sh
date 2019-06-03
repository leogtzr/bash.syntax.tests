#!/bin/bash
set -x

is_app_running() {
	if [[ ! -f "/tmp/somefile" ]]; then
		return 1
	fi
	return 0
}

if is_app_running; then
	echo "It does exist"
fi

exit 0 
