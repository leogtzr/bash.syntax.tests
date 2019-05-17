#!/bin/bash
set -x

cutofftime=2200

if [[ ! -z "${cutofftime}" ]] && grep --quiet --extended-regexp '^[0-9]+$' <<< "${cutofftime}"; then
	echo "Ok ... "
fi

exit 0
