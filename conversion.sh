#!/bin/bash
#PULL FIRST LINE OF DATA FILE (HEADERS)
line=$(head -n 1 data.csv)
#PARSE $line INTO ARRAY ${field[*]}
IFS=',' read -a field <<< "$line"
#TRACE TO MAKE SURE FIELDS ARE PARSED INTO ARRAY
#for element in "${field[@]}"; do
#	echo "$element"
#done
#THIS IS THE FORMAT FOR GETTING LENGTH OF ARRAY echo ${#field[@]}
#CREATE JSON DATA FILE
touch jsondata.json
#BEGIN PIPING DATA INTO JSON FILE > OVERWRITES >> APPENDS
printf "[\n" > jsondata.json
for ((i=2; i <= 1827 ; i++))
do
	row=$(sed ""$i"q;d" data.csv)
	printf "{\n" >> jsondata.json
	IFS=',' read -a entry <<< "$row"
	for ((j=0; j <= 20 ; j++))
	do
		printf "\"" >> jsondata.json
		printf "${field[$j]}" >> jsondata.json
		printf "\":\"" >> jsondata.json
		printf '${entry["$j"]}' >> jsondata.json
		printf "\",\n" >> jsondata.json
	done
	printf "\"" >> jsondata.json
	printf "${field[21]}" >> jsondata.json
	printf "\":\"" >> jsondata.json
	printf "${entry[21]}" >> jsondata.json
	printf "\"\n}," >> jsondata.json
done
printf "]"
exit
