#!/bin/bash

db=$1
user=$2
pw=$3
sensor=$4
table=$5
start1=$6
end1=$7
start2=$8
end2=$9

records1=$(mysql -D$db -u$user -p$pw -se "SELECT $sensor FROM $table WHERE id >= $start1 AND id <= $end1")

records2=$(mysql -D$db -u$user -p$pw -se "SELECT $sensor FROM $table WHERE id >= $start2 AND id <= $end2")

ttest=$(Rscript ttest2.R $records1 $records2)

date=$(date '+%Y-%m-%dT%H:%M:%S')

cat <<EOF > ./$date.ttest2
$ttest
EOF
