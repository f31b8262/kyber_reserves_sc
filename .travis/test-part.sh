#!/bin/bash
# -*- firestarter: "shfmt -i 4 -ci -w %p" -*-

set -euxo pipefail

readonly test_part=${TEST_PART:-}

case "$test_part" in
fullRegression)
    yarn buidler test --no-compile
    ;;
*)
    echo "test case not defined yet"
    ;;
esac
