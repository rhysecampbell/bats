#!/bin/bash 

seq 1 100 | while read L; do
	F=$(($L % 3))
	B=$(($L % 5))

	[ $F -eq 0 ] && echo -n Fizz
	[ $B -eq 0 ] && echo -n Buzz
	[ $F -ne 0 ] && [ $B -ne 0 ] && echo -n $L

	echo
done
