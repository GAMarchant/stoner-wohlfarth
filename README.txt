Explanations of files (guide for inputs can be found at the top of each file): 
	* run-cubic_SW.sh: runs a hysteresis loop for a given field direction and prints results to directory specified in input.
	* cubic_SW.template: template on which lammps input file is created.
	* perturb.lammps: lammps subroutine file for perturbing spins.
	* high_sym_test.sh: runs hysteresis loop calculation for 3 high symmetry field directions and plots parallel and perpendicular magnetisation in PDF.
	* MvH.template: template for gnuplot that created PDF plot
	* MvH_plot.sh: edits gnuplot file template and runs it.
	* perturb_tests.sh: example of how to use bash scripting to run high_sym_test.sh multiple times, testing the output for different sizes of perturbation.

 
