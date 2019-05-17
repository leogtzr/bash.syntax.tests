#!/bin/bash
set -x

foo() {
	local -r file="${1}"
}

foo "alv"

exit 0
