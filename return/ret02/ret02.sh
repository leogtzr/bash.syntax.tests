!/bin/bash

set -x

count() {
	local file="${2}"
	local str="${1}"
	local n

	n=$(grep --extended-regexp --ignore-case "${str}" "${file}" | wc --lines)
	((n == 1))
}

if count "an" "file"; then
	echo "Ok"
fi

exit 0
