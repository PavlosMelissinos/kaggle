#!/bin/bash

CURRENT_DIR=$PWD
PARENT_PATH=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

TRAIN_CSV=$1
s=0
i=1

DIRNAME=`dirname $1`
BASENAME=`basename $1 .csv`

for e in `cat src/event_points.txt`
do
    OUTFILE=${DIRNAME}/${BASENAME}_${i}.csv
    cat $TRAIN_CSV | head -n $e | tail +$((s+1)) > $OUTFILE
    echo "Created ${OUTFILE}, containing data points from segment ${i}"
    ls -lh $OUTFILE
    s=$e
    i=$((i+1))
done

cd $CURRENT_DIR
