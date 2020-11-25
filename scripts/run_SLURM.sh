#!/usr/bin/bash


CONFIG=$1; shift
NAME=$1; shift
rm -f ../egglayingwoolmilkpig/logs/$NAME.out

#sbatch  -n 1 -t 24:00:00 --mem 8GB -o logs/$NAME.out -e logs/$NAME.out -J $NAME.parse run_X.sh $CONFIG $NAME $args;
#bash  ./scripts/run_Y.sh $CONFIG $NAME;
sbatch  -o ../egglayingwoolmilkpig/logs/$NAME.out -e ../egglayingwoolmilkpig/logs/$NAME.out -J $NAME.parse ./scripts/run_Z.sh $CONFIG $NAME $@;
#bash run_X.sh $CONFIG $NAME $args;
