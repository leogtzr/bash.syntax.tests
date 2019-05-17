#!/bin/bash
set -x

verify_load() {    
    local -r load_err_cnt=3
    ((load_err_cnt <= 10))
}

# verify_load
# e_code=${?}

if ! verify_load; then
    echo "There was an error ... "
fi

exit 0
