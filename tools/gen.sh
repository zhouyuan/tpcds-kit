#!/bin/sh
for i in `seq 1 99`
do
./dsqgen \
-DIRECTORY ../query_templates/ \
-TEMPLATE "query${i}.tpl" \
-DIALECT netezza \
-SCALE 3000 \
-QUALIFY Y \
-FILTER Y > ../sql/query${i}.sql
done
