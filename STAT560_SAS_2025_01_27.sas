
%let wData = C:/Users/coryg/OneDrive/Desktop/STAT_560_Nonparametric_Stats;

*example 1;
data algebra;
  input pair interv control;
  diff=interv-control;
datalines;
1 10 26
2 22 40
3 44 66
4 23 55
5 8 16
6 33 33
7 0 8
8 8 6
9 14 18
10 34 14
11 2 23
12 10 15
;
run;

proc univariate data=algebra;
  var diff;
run;

*example 2;
title 'Stock Price';
data Stock;
  infile "&wData.\Ex_1_3.dat";
  input Day $ Week1 Week2;
  diff=Week1-Week2;
run;

proc univariate data=Stock;
  var diff;
run;


