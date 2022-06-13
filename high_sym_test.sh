#!/bin/bash

#USAGE: ***************************************
#./run-high_sym_test.sh H_diff H_n results_directory results_prefix
#See below for descriptions of input parameters
#*********************************************

#Setting up input parameters
#Set field increment
H_diff=$1
#Set no. of field values from H=0 to H=max (5*H_n field values in total)
H_n=$2

#Set results directory & file prefix
results_dir=$3; pref=$4

#Run field sweep for each high-symmetry direction
source run-cubic_SW.sh $results_dir $pref $H_diff $H_n 0 0 1
source run-cubic_SW.sh $results_dir $pref $H_diff $H_n 1 0 1
source run-cubic_SW.sh $results_dir $pref $H_diff $H_n 1 1 1

#Plot results in $results_dir/$pref.HvM.pdf
source MvH_plot.sh $results_dir $pref
