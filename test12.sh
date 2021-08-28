#!/bin/sh

echo "_______non define________"
echo $NAME
echo "_________________________"


echo "________defining a variable_______" 
NAME="Vu Duy Nhien"
echo $NAME
echo "__________________________________"



echo "_______unsetting a variable_______"
unset NAME

echo $NAME

echo "__________defining again__________"
NAME="Vu Duy Nhat"
echo $NAME
echo "__________________________________"
