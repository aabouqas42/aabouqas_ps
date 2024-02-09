#!/bin/bash
INSTRACTION=0
read -p "Enter a range : " RANGE
i=0
while [ $i -le $RANGE ]; do
	INSTRACTION=$(./push_swap $(seq 1 $RANGE | sort -R) | wc -l)

	if [ $RANGE == 3 ] && [ $INSTRACTION -le 3 ] || [ $RANGE == 5 ] && [ $INSTRACTION -le 12 ] || [ $RANGE == 100 ] && [ $INSTRACTION -le 700 ] || [ $RANGE == 500 ] && [ $INSTRACTION -le 5500 ]; then
		echo -e "\033[32m$INSTRACTION OK\033[0m"
	else
		echo -e "\033[31m$INSTRACTION KO\033[0m"
	fi
	sleep 0.1;
	((i++))
done
