#!/bin/bash
#this script will create 30 entries
#Adam Mejia
#filename: 30entries.sh
names=(adam bob charlie dave ed frank gil harry ivan jim ken larry moe ned oscar paul quinn rob steve tim uter vince will xander yun zaphod al ben cameron diink)
for name in ${names[@]}
do
http POST http://localhost:5000/students/ name=$name
done
