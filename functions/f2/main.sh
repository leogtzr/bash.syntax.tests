#!/bin/bash
set -x

readonly work_dir=$(dirname "$(readlink --canonicalize-existing "${0}" 2> /dev/null)")
readonly skip_file="${work_dir}/skip"

number_of_files_to_be_skipped() {
	return $(wc --lines < "${skip_file}")
}

number_of_files_to_be_skipped

exit 0
