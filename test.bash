#!/bin/bash
# SPDX-FileCopyrightText: 2025 Obata Yuuto
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo ${1}行目が違うよ
      res=1
}

res=0

out=$(echo 'int main(){return 0;}' | ./c-newline-add)

echo "${out}" | grep -q 'int main(){' || ng "$LINENO"
echo "${out}" | grep -q 'return 0;' || ng "$LINENO"
echo "${out}" | grep -q '}' || ng "$LINENO"

echo "" | ./c-newline-add > /dev/null 2>&1 || ng "$LINENO"

exit $res
