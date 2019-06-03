#!/bin/bash

set -x

func() {
    if ps -ef | grep -E -q '[s]leep'; then
        true
    else
        false
    fi
}

# sleep 10s &

if func; then
    echo "Running ... "
else
    echo "Not running ... "
fi

exit 0