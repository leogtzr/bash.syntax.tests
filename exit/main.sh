#!/bin/bash

for ((i = 0; i < 1000; i++)); do
	./b.sh "${i}"
	e_code="${?}"

	echo "exit code: ${e_code}"
done

exit 0
