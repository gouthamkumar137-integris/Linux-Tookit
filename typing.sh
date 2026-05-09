#!/bin/bash

sentence="linux is awesome"

echo "Type this:"
echo "$sentence"

start=$(date +%s)

read input

end=$(date +%s)

time_taken=$((end - start))

words=$(echo "$input" | wc -w)

wpm=$((words * 60 / time_taken))

echo "Time: $time_taken sec"
echo "WPM: $wpm"

if [ "$input" = "$sentence" ]; then
    echo "Accuracy: 100%"
else
    echo "Accuracy: Wrong input"
fi