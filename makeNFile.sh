#!/bin/bash
# $0 7 foo would make 7 empty files foo1, foo2, ... foo7
# skipping any files that exist
if [ $# -ne 2 ] 
then
  echo "${0}: wrong number of arguments" 
  exit 1
fi
i=1
while [ $i -le $1 ]
do
  if [ ! -f $2$i ]
  then
    touch $2$i
  fi
  (( i=$i+1 ))
done

# success
exit 0
