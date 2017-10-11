
<!-- README.md is generated from README.Rmd. Please edit that file -->
pisaUSA15
=========

The goal of pisaUSA15 is to make it easy to access the student assessment and questionnaire, teacher questionnaire, and school questionnaire data from the 2015 [PISA assessment](http://www.oecd.org/pisa/data/). The 2015 dataset includes responses from more than 500,000 students, while this package includes the almost 6,000 responses associated with students in the USA.

Installation
------------

You can install pisaUSA15 from github with:

``` r
# install.packages("devtools")
devtools::install_github("jrosen48/pisaUSA15")
```

Example
-------

Here is how to load the four datasets (just type the name after loading the package with `library(pisaUSA15)`; not run for now as very many of the column names are printed):

``` r
library(pisaUSA15)

stu_assess # student assessments
stu_quest # student questionnaires
tch_quest # teacher questionnaires
sch_quest # school questionnaires
```

Merging datasets
----------------

Joining the student assessment and student questionnaire:

``` r
library(dplyr)
left_join(stu_assess, stu_quest, by = "CNTSTUID")
```

Joining student-level data (either the student assessment or student questionnaire) with teacher or school questionnaires:

``` r
left_join(stu_quest, tch_quest, by = "SCHID")
left_join(stu_assess, tch_quest, by = "SCHID")
```

Joining teacher and school questionnaires:

``` r
left_join(tch_quest, sch_quest, by = "SCHID")
```
