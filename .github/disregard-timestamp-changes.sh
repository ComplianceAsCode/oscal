#!/bin/sh

set -o errexit
set -o nounset
set -x

for format in xml json; do
	cd $format
	for f in `ls`; do
		if ! git ls-files --error-unmatch $f; then
			git add $f
		fi
		if [ "x$format" == "xxml"  ] && ! git diff $f|grep -v last-modified.*last-modified | grep -v ' uuid="' | grep '^+\s'; then
			git checkout $f;
		fi
		if [ "x$format" == "xjson" ] && ! git diff $f|grep -v '"last-modified": ".*",$'  | grep -v '"uuid": "' | grep '^+\s'; then
			git checkout $f;
		fi
	done
	cd ..
done
