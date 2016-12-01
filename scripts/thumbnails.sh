#!/bin/bash

for i in *.jpg
do
  djpeg $i | pnmscale -xysize 420 600 | cjpeg -optimize -progressive -quality 75 > TN_$i
  echo $i processed
done
