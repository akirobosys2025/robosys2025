#!/bin/bash -xv
# SPDX=FileCopyrightText: 2025 Aki Moto aki.robosys2025@gmail.com 
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

### NORMAL INPUT ###
out=$(seq 5 | ./plus)
test "${out}" = 15 || ng "$LINENO"

### STRANGE INPUT ###
out=$(echo  | ./plus)
test "$?" = 1      || ng "$LINENO"
test "${out}" = "" || ng "$LINENO"

### STRANGE INPUT ###
out=$(echo あ | ./plus)
test "$?" = 1      || ng "$LINENO"
test "${out}" = "" || ng "$LINENO"

test "${res}" = 0 && echo OK
exit $res
