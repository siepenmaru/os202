#!/bin/bash
# Avatar Azka / siepenmaru / 1906426802
# Last Edit: 10 Oct 2020

FILES="my*.txt my*.sh"
SHA="SHA256SUM"

rm -f $SHA $SHA.asc

echo "sha256sum $FILES > $SHA"
sha256sum $FILES > $SHA

echo "sha256sum -c $SHA"
sha256sum -c $SHA

echo "gpg -o $SHA.asc -a -sb $SHA"
gpg -o $SHA.asc -a -sb $SHA

echo "gpg --verify $SHA.asc $SHA"
gpg --verify $SHA.asc $SHA

exit 0
