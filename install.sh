#!/bin/bash

cpflags='-d -i'

scpdir=`dirname $0`
dotfs=`find $scpdir -name '.*rc' -a -type f`

cp $cpflags $dotfs ~/
