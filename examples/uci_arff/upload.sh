#!/bin/bash

cl new uci_arff
for x in `dirname $0`/auto/*; do
  echo $x
  d=`grep Title $x | head -1 | cut -f 2 -d :`
  cl upload dataset $x --description "$d" --source_url http://repository.seasr.org/Datasets/UCI/arff --auto || exit 1
done
