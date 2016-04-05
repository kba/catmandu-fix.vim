#!/bin/bash

prefix="Catmandu.Fix"
if [[ ! -z "$1" ]];then
    prefix="$prefix.$1"
fi
echo "syn keyword fix$1"
locate -r "$prefix.*pm"|sed "s,^.*$prefix/,,"|grep -v '[A-Z]'|sed 's/\.pm$//'|sed 's,^,\t\\ ,'|sort|uniq
