## Multiple Regression Analysis

Author: Atul Lanka

This repository contains the files created and used for HW#3 (Multiple Regression Analysis)

This assignment is about applying statistical concepts in R to reproduce regression analysis. More specifically, to replicate the analysis from Section 3.2, of Chapter 3: Linear Regression, from the book "An introduction to Statistical Learning"

The primary purpose of this assignment is to take the concepts used in the previous assignment and extend it to multiple variables. Furthermore, functions generating regression values as well as their respective unit tests will be written out to measure the accuracy of the regression. 

The repository is structured as follows: 

- The code written out for the assignment is all compiled into this folder, which is further segregated into subfolders functions, scripts and tests.
- The data folder contains all the data either used or generated from other scripts in this project. The primary data file used is `Advertising.csv` 
- The images folder contains all the plots generated from the Rscripts in order to visualize the regression analysis. 
- The report folder is the final product or version of all the compiled output generated from the previous folders. 

Detailed structure of the repository:

```
stat159-fall2016-hw03/
	.gitignore
	README.md
	LICENSE
	Makefile
	session-info.txt                     # produced by session-info-script.R
	code/
	  README.md
	  test-that.R
	  functions/
	    regression-functions.R
	  scripts/
	    eda-script.R
	    regression-script.R
	    session-info-script.R
	  tests/
	    test-regression.R
	data/
	  README.md
	  Advertising.csv
	  eda-output.txt                      # produced by eda-script.R
	  correlation-matrix.RData            # produced by eda-script.R
	  regression.RData                    # produced by regression-script.R
	images/
		histogram-sales.png                # produced by eda-script.R
		histogram-tv.png                   # produced by eda-script.R
		histogram-radio.png                # produced by eda-script.R
		histogram-newspaper.png            # produced by eda-script.R
		scatterplot-matrix.png             # produced by eda-script.R
		scatterplot-tv-sales.png           # produced by regression-script.R
		scatterplot-radio-sales.png        # produced by regression-script.R
		scatterplot-newspaper-sales.png    # produced by regression-script.R
		residual-plot.png                  # produced by regression-script.R
		scale-location-plot.png            # produced by regression-script.R
		normal-qq-plot.png                 # produced by regression-script.R
	report/
		report.Rmd
		report.pdf
```

For a user to be able to recreate and navigate through the entire repository:
1. Clone/Download the repository on Git
2. Use `cd` in the terminal to set the current directory to the repository
3. Run the Makefile command `make all` to run the scripts

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.


