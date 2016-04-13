#!/bin/bash

cpflags='-f -v'

scpdir=`dirname $0`
dotfs=`find $scpdir -name '.*rc' -a -type f`

cp $cpflags $dotfs ~/
