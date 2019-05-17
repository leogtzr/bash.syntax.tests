#!/bin/bash
readonly work_dir=$(dirname "$(readlink --canonicalize-existing "${0}" 2> /dev/null)")
readonly a_script="${work_dir}/a.sh"

(
	. "${a_script}"
	echo "Name is: ${NAME}"
)
echo "Name is: ${NAME}"

exit 0
