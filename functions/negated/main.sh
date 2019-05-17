#!/bin/bash

set -x
acceptable_number_of_discared_rows=3

verify_load() {
    #local -r load_err_msg="Rows? not loaded due to data errors."
    local -r load_err_cnt=22
    if ((load_err_cnt >= acceptable_number_of_discared_rows)); then
        return 1
    else
        return 0
    fi
}

if verify_load; then
	echo "We are ok ... "
else
	echo "Valiendo shit ... "
fi
exit 0
