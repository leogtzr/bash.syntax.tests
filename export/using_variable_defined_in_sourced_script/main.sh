#!/bin/bash
set -x

readonly work_dir=$(dirname "$(readlink --canonicalize-existing "${0}" 2> /dev/null)")
readonly cli_lib="${work_dir}/cli.sh"
readonly aux_lib="${work_dir}/a.lib"

. "${cli_lib}"


exit 0