#!/usr/bin/env bash

# Script to build the Attic site from xdocs/ sources to docs/ html output

ant -Danakia.check.date=false

\rm -rf docs/flagged
mkdir docs/flagged
for retired in `grep 'retired flag:' xdocs/projects/*.xml | awk '{ print $3 }'`
do
  for d in $retired $retired.us $retired.eu
  do
    mkdir docs/flagged/$d.apache.org
    touch docs/flagged/$d.apache.org/$d.apache.org
  done
done
