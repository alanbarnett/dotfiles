#!/bin/bash
echo Enter new program file name
read NAME
echo Enter program description
read DESC
touch $NAME
echo "//*******************************************************************" >> $NAME
echo "//" >> $NAME
echo "//  Program:     $NAME" >> $NAME
echo "//" >> $NAME
echo "//  Author:      Alan Barnett" >> $NAME
echo "//  Email:       ab161314@ohio.edu" >> $NAME
echo "//  ID:          P100247793" >> $NAME
echo "//" >> $NAME
echo "//  Description: $DESC" >> $NAME
echo "//" >> $NAME
echo "//  Date:        (enter date program was completed)" >> $NAME
echo "//" >> $NAME
echo "//*******************************************************************" >> $NAME
