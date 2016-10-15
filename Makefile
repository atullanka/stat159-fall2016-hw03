.PHONY: data tests eda regression report clean all

data:
	curl -o data/Advertising.csv http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

all: eda regression report

session-info:
	Rscript code/scripts/session-info-script.R

eda:
	Rscript code/scripts/eda-script.R

regression:
	Rscript regression-script.R

tests:
	 Rscript code/test-that.R

report: report/report.rmd regression eda 
	Rscript -e 'library("rmarkdown"); render("report/report.Rmd",output_format = "pdf_document")'


clean: 
	rm -f report/report.pdf
