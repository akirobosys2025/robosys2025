#!/bin/bash -xv
# SPDX=FileCopyrightText: 2025 Aki Moto aki.robosys2025@gmail.com 
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

test_plus() {
    	### NORMAL INPUT ###
    	out=$(seq 5 | ./plus)
    	test "${out}" = 15 || ng "$LINENO"

    	### STRANGE INPUT ###
    	out=$(echo | ./plus)
    	test "$?" = 1      || ng "$LINENO"
    	test "${out}" = "" || ng "$LINENO"

    	### STRANGE INPUT ###
    	out=$(echo あ | ./plus)
	test "$?" = 1      || ng "$LINENO"
	test "${out}" = "" || ng "$LINENO"
}

test_prime() {
	### NORMAL INPUT ###
	out=$(echo 30 | ./prime)
	test "${out}" = "2 3 5" || ng "$LINENO"

	### STRANGE INPUT ###
	out=$(echo | ./prime)
	test "$?" = 1 	      || ng "$LINENO"
	test "${out}" = ""    || ng "$LINENO"

	### STRANGE INPUT ###
	out=$(echo あ | ./prime)
	test "$?" = 1      || ng "$LINENO"
	test "${out}" = "" || ng "$LINENO"
}

run_test() {
    echo ""
    echo ">>> RUN $1"
    $1
}

run_test test_plus
#run_test test_prime

if test "${res}" = 0 ; then
    echo "OK"
else
    echo "FAILED"
fi

exit $res
