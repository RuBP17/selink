#!/bin/sh

. ./check_common.sh

## Verbose mode
test "x$VERBOSE" = xx && set -x

SRC_PREFIX=$srcdir/SFS_small
OUT_PREFIX=$srcdir/out
TEST_ID=$(basename ${0%.sh})
OPTIONS="-s -p -K -n 10 -T"
INTERPOP=

if [ -n "${REGENERATE}" ]
then
    regenerate "${OPTIONS}" "${SRC_PREFIX}" "${OUT_PREFIX}" ${TEST_ID} ${INTERPOP}
else
    check "${OPTIONS}" "${SRC_PREFIX}" "${OUT_PREFIX}" ${TEST_ID} ${INTERPOP}
fi
