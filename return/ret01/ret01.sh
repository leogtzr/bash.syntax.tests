#!/bin/bash
set -x

done_loading=1

done_processing_files() {
    if ((done_loading == 1)); then
        return 0
    fi
    return 1
}

if done_processing_files; then
	echo "We are done ... "
fi

done_loading=0

if done_processing_files; then
	echo "We are done ... "
fi

exit 0