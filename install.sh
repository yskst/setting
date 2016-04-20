#!/bin/bash

cpflags='-f -v'

scpdir=`dirname $0`
dotfs=`find $scpdir -name '.*rc' -a -type f`

cp $cpflags $dotfs ~/

echo "Set up neobundle"
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
