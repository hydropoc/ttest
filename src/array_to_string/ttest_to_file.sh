#!/bin/bash

db=$1
user=$2
pw=$3
sensor=$4
table=$5
start=$6
end=$7

records=$(mysql -D$db -u$user -p$pw -se "SELECT $sensor FROM $table WHERE id >= $start AND id <= $end")

ttest=$(Rscript ttest.R $records)

date=$(date '+%Y-%m-%dT%H:%M:%S')

cat <<EOF > ./$date.ttest
$ttest
EOF
