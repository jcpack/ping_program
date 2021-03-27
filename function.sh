#!/bin/bash

function function_fping (){ 
echo "please enter ip address with subnet mask here is a example 192.1.1.1/24"
read SUBNET
for SUBNET in $SUBNET; do


        fping -a -s -g  $SUBNET  | cat  > ping.txt
sleep 10s
done


}


function function_pingfile (){    

echo "woho looks like you have some nodes up on the network"
while read -r line; do 
# Reading each line
echo $line 
done < ping.txt

}

function_fping

function_pingfile

