#!/usr/bin/env bash
set -e

for i in ${JOBSET_OUTPUT_WORK_PATH}*-bottom-pos; do
  sed "s/Ref/Designator/;\
    s/PosX/Mid X/;\
    s/PosY/Mid Y/;\
    s/Rot/Rotation/;\
    s/Side/Layer/" $i > $i.jlc
  mv $i.jlc $i
  mv $i $i.csv
done

for i in ${JOBSET_OUTPUT_WORK_PATH}*-top-pos; do
  sed "s/Ref/Designator/;\
    s/PosX/Mid X/;\
    s/PosY/Mid Y/;\
    s/Rot/Rotation/;\
    s/Side/Layer/" $i > $i.jlc
  mv $i.jlc $i
  mv $i $i.csv
done
