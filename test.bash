#!/bin/bash
# SPDX-FileCopyrightText: 2025 Obata Yuuto
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo ${1}行目でエラーが発生したよ。
      res=1
}


res=0


out=$(echo 'int main(){return 0;}' | ./c-newline-add)
[ "${?}" = 0 ] || ng "$LINENO"


echo "${out}" | grep -q 'int main(){' || ng "$LINENO"
echo "${out}" | grep -q '    return 0;' || ng "$LINENO"
echo "${out}" | grep -q '}' || ng "$LINENO"


out=$(echo 'int main(){if(1){return 0;}}' | ./c-newline-add)
[ "${?}" = 0 ] || ng "$LINENO"


echo "${out}" | grep -q '    if(1){' || ng "$LINENO"
echo "${out}" | grep -q '        return 0;' || ng "$LINENO"


echo "}}}}" | ./c-newline-add > /dev/null 2>&1
[ "${?}" = 0 ] || ng "$LINENO"


out=$(echo 'Hello World' | ./c-newline-add)
[ "&{?}" = 0 ] || ng "$LINENO"
echo "${out}" | grep -q 'Hello World' || ng "&LINENO"


exit $res
