#!/bin/env bash
for i in {1..75}
do
    echo "i is:"
    echo $i
    echo $((i/10))
    echo $((i%10))
  xdotool search --name deck windowactivate key --delay 500 ctrl+p Return; 
  sleep 1; 
  xdotool key $((i/10)) $((i%10))  Return; 
  sleep 1; 
  xdotool search --name deck windowactivate click 1; 
  sleep 1; 
  xdotool key space; 
  sleep 1;
done
cd ~/Documents/papers/thesis/presentation_slides; 
bash merge_pdfs.sh
