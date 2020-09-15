#!/bin/bash

sum=0

POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -l|--low)
    LOW="$2"
    shift
    shift
    ;;
    -h|--high)
    HIGH="$2"
    shift
    shift
    ;;
*)
    POSITIONAL+=("$1")
    shift
    ;;
esac
done
set -- "${POSITIONAL[@]}"

d=$(cat)

for i in $d
do
if [[ "$i" =~ ^[0-9]+$ ]]
then
        if [ "$i" -ge "$LOW" ] && [ "$i" -le "$HIGH" ]
        then
                sum=$(($sum+$i));
        fi
fi
done
echo $sum