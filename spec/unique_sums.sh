#!/usr/bin/env bash

rute=`realpath $(dirname -- $(realpath ${BASH_SOURCE[0]}))/..`
. $rute/lib/sums

function spec-unique-sums() {
  [[ -r $rute/spec/.haiku.txz ]] || ( $rute/bak $rute/spec/haiku )

  csum=`compress-sum "$rute/spec/haiku" "$rute/spec" | awk -F"'" '{print $4}' | awk -F'/' '{print $NF}'`

  unique-sums "$rute/spec/.haiku.txz" "$csum"
  rc=$?

  printf "unique-sums return: $rc\n"
  printf "unique-sums: [1m"

  [ $rc -eq 1 ] && printf "[38;5;148mSuccess" || printf "[38;5;196mFail"
  printf "[0m\n"

  # /usr/bin/rm $rute/spec/{haiku,$csum}
}
