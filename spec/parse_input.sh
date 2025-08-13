#!/usr/bin/env bash

rute=`realpath $(dirname -- $(realpath ${BASH_SOURCE[0]}))/..`

. $rute/lib/create

function spec-parse-input() {
  fail=`parse-input "/tmp/dne"`
  fmessage="[38;5;160mTarget file/directory not found: /tmp/dne[0m"
  target=`parse-input "$HOME"`

  diff <(printf '%s\n' "$fail") <(printf '%s\n' "$fmessage")  # Debug visualized the difference between output and test-stub

  printf "parse-input: \n  accept: [1m"
  [[ "$target" == "/home/$USER" ]] && printf "[38;5;148mSuccess" || printf "[38;5;9mFail"
  printf "[0m\n  reject: [1m"
  [[ "$fail" == "$fmessage" ]] && printf "[38;5;148mSuccess" || printf "[38;5;9mFail"
  printf "[0m\n"
}
