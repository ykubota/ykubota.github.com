#!/bin/bash

# custom favorite ps option(s)
ps='ps auxww'

this=$0
$ps | head --lines=1
for i in $*
do
  # set [c]mmand to avoid grep
  command='['${i:0:1}']'${i:1}
  $ps | grep -v $this | grep --color=auto $i
done
