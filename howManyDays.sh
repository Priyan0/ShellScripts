#!/bin/sh

d1=`date +%s -d $1`
d2=`date +%s`
((diff_sec=$d1-$d2))
echo - | awk -v SECS=$diff_sec '{ if(SECS<86400 && SECS>-86400) printf "HAPPY BIRTHDAY!";
else if(SECS<0) printf "Your birthday got over %d days back!",-(SECS/(60*60*24)); 
else printf "%d days more for your birthday",SECS/(60*60*24)}'
