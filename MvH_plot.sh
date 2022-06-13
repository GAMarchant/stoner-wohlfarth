#!/bin/bash

#USAGE: ***************************************
#./MvH_plot.sh results_directory results_prefix
#See below for descriptions of input parameters
#*********************************************

#Declare directory containing data
dir=$1
#Declare file prefix for data
file_pref=$2

#Change to directory
cd $dir

#Find and replace placeholder with file_prefix and write to new gnuplot file
sed -e "s/FILEPREF/$file_pref/g" ../MvH.template > $file_pref.MvH.p

#Run gnuplot w/ script
gnuplot -e "load '$file_pref.MvH.p'"

#Return to previous directory
cd -
