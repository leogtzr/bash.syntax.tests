#!/bin/bash
set -x

record_count_within_margin() {
	false
}

if record_count_within_margin; then
	echo "Ok ... "
else
	echo "Not OK ... "
fi

exit 0
