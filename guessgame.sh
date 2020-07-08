#!/bin/bash
function getvalue
{
c=$(find . -maxdepth 1 -type f|wc -l)
echo $c
}

count=$(getvalue)
echo "guess the number of files in your directory"
read input
while [[ $input -ne $count ]]
do
if [[ $input -gt $count ]]
then
echo "The number is too high,try a lower value!"
read $input

elif [[ $input -lt $count ]]
then
echo "The number is too low,try a higher value!"
read $input
fi
done

echo "Congrats You Won :)"
