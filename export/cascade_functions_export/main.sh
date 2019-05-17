#!/bin/bash

set -x
readonly work_dir=$(dirname "$(readlink --canonicalize-existing "${0}" 2> /dev/null)")
readonly a_script="${work_dir}/a.sh"

. "${a_script}"
foo

exit 0
