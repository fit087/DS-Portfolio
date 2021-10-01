* Encoding: UTF-8.

* Module 2 - Descriptive Statistics
* Lab Exercise - Descriptive Statistics

FREQUENCIES VARIABLES=students allstudents
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=students allstudents
  /NTILES=4
  /STATISTICS=STDDEV VARIANCE RANGE MINIMUM MAXIMUM SEMEAN MEAN MEDIAN MODE SKEWNESS SESKEW 
    KURTOSIS SEKURT
  /ORDER=ANALYSIS.

CROSSTABS
  /TABLES=students BY allstudents
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW 
  /COUNT ROUND CELL.

* 6. Using SPSS Statistics, try to reproduce the following descriptive statistics table on the Teaching Ratings data:

DESCRIPTIVES VARIABLES=age beauty eval students allstudents
  /STATISTICS=MEAN STDDEV MIN MAX.

* 7. Create a histogram of beauty and briefly comment on the distribution of data (as a thought question).
GRAPH
  /HISTOGRAM=beauty
  /TITLE='histogram of beauty'.

CROSSTABS
  /TABLES=beauty BY gender
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW 
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=beauty BY gender
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT 
  /COUNT ROUND CELL.

* 8 .Does average beauty score differ by gender in the Teaching Ratings data?
    Produce averages and standard deviations for each of the two variables.
MEANS TABLES=beauty BY gender
  /CELLS=MEAN COUNT STDDEV.

CROSSTABS
  /TABLES=tenure BY vismin
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW 
  /COUNT ROUND CELL.

