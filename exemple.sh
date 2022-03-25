#!/bin/bash

COMPANY="boeing"
NAME1=$(aws iam get-group --group-name devteam | grep adrian | sed 2d | cut -c)
NAME1=$(aws iam get-group --group-name devteam | grep johnson | sed 2d | cut -c)
NAME1=$(aws iam get-group --group-name devteam | grep lauren | sed 2d | cut -c)
DEVTEAM="$NAME1 $NAME2 $NAME3"
for x in $DEVTEAM
do
       if [ $1 == "mb" ]
       then 
               aws s3 $1 s3://$x-$COMPANY-devteam
       else
               echo "no buckets created for $x"

        fi 
done                       