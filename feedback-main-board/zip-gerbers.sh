#!/usr/bin/env bash

for i in ${JOBSET_OUTPUT_WORK_PATH}*-gerbers; do
  zip -j ${JOBSET_OUTPUT_WORK_PATH}$(basename "$i").zip  $i/*
done
