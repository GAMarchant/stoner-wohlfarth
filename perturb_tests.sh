#!/bin/bash

#USAGE: ***************************************
#./perturb_tests.sh
#*********************************************

#save original sub-routine file
cp perturb.lammps perturb.lammps.save

#declare for loop over epsilon (size of perturbation) values
for epsilon in 1E-4 1E-5 1E-6 1E-7 1E-8 1E-9
do
	#find and replace line with current epsilon value
	sed -i "s/variable epsilon equal.*/variable epsilon equal ${epsilon}/g" perturb.lammps
	#generate graph w/ high symmetry hysteresis loops using current epsilon for file prefix
	source high_sym_test.sh 500 100 perturb_tests perturb-$epsilon
done

#restore saved sub-routine file
mv perturb.lammps.save perturb.lammps
