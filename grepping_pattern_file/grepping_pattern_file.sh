#!/bin/bash
set -x

content() {
	cat <<EOF
Hola
Mundo
Cruel
Que
Onda
EOF
}

to_skip() {
	cat <<EOF
Mundo
Que
EOF
}

to_skip2() {
	cat <<EOF
Onda
EOF
}

content | fgrep -v -f <(to_skip) | fgrep -v -f <(to_skip2)

exit 0
