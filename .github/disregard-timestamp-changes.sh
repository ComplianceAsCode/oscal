#!/bin/sh

set -o errexit
set -o nounset
set -x

cd xml/
for f in `ls`; do
	if ! git diff $f|grep -v last-modified.*last-modified | grep '^+\s'; then
		git checkout $f;
	fi
done
cd ..
