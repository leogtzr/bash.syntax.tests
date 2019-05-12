#!/bin/bash
set -x

readonly work_dir=$(dirname "$(readlink --canonicalize-existing "${0}" 2> /dev/null)")

. "${work_dir}/a.sh" || {
	echo "error reading a.sh" >&2
	exit 1
}

export work_dir

some_function

printf "Variabe: '%s'\n" "${a_var_name}"

# Adaptive.sublime-theme
exit 0