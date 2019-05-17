#!/bin/bash
set -x

is_something() {
	grep --extended-regexp --quiet 'hola' <<< 'hola putos'
}

foo() {
	if [[ ! -f "skip" ]]; then
		return 1
	fi

	fgrep --quiet "x" "skip"
}

if foo; then
	echo "Existe en archivo"
fi


exit 0
