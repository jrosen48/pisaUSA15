
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

Here is how to load the four datasets:

``` r
library(pisaUSA15)
library(tibble)

stu_assess
#> # A tibble: 5,712 x 2,049
#>    CNTRYID   CNT CNTSCHID CNTSTUID   CYC NatCen Region STRATUM SUBNATIO
#>      <int> <chr>    <int>    <dbl> <chr>  <chr>  <int>   <chr>    <chr>
#>  1     840   USA 84000001 84006899  06MS 084000  84000 USA0103  8400000
#>  2     840   USA 84000001 84000625  06MS 084000  84000 USA0103  8400000
#>  3     840   USA 84000001 84007720  06MS 084000  84000 USA0103  8400000
#>  4     840   USA 84000001 84001279  06MS 084000  84000 USA0103  8400000
#>  5     840   USA 84000001 84000532  06MS 084000  84000 USA0103  8400000
#>  6     840   USA 84000001 84005284  06MS 084000  84000 USA0103  8400000
#>  7     840   USA 84000001 84001664  06MS 084000  84000 USA0103  8400000
#>  8     840   USA 84000001 84010771  06MS 084000  84000 USA0103  8400000
#>  9     840   USA 84000001 84003969  06MS 084000  84000 USA0103  8400000
#> 10     840   USA 84000001 84010965  06MS 084000  84000 USA0103  8400000
#> # ... with 5,702 more rows, and 2040 more variables: OECD <int>,
#> #   ADMINMODE <int>, Option_CPS <int>, Option_FL <int>, Option_UH <int>,
#> #   Option_Read <chr>, Option_Math <chr>, LANGTEST_QQQ <int>,
#> #   LANGTEST_COG <int>, LANGTEST_PAQ <dbl>, CBASCI <dbl>, BOOKID <int>,
#> #   DR219Q01AC <dbl>, DR219Q01BC <dbl>, DR219Q01CC <dbl>,
#> #   DR219Q01DC <dbl>, DR219Q01EC <dbl>, DR219Q01C <dbl>, CR219Q01T <dbl>,
#> #   CR219Q01A <dbl>, DR219Q02C <dbl>, CR219Q02T <dbl>, CR219Q02A <dbl>,
#> #   DR067Q01R <dbl>, CR067Q01S <dbl>, CR067Q01T <dbl>, CR067Q01A <dbl>,
#> #   DR067Q04C <dbl>, CR067Q04T <dbl>, CR067Q04A <dbl>, DR067Q05C <dbl>,
#> #   CR067Q05T <dbl>, CR067Q05A <dbl>, DR102Q04C <dbl>, CR102Q04T <dbl>,
#> #   CR102Q04A <dbl>, DR102Q05C <dbl>, CR102Q05T <dbl>, CR102Q05A <dbl>,
#> #   DR102Q07R <dbl>, CR102Q07S <dbl>, CR102Q07T <dbl>, CR102Q07A <dbl>,
#> #   CR220Q01S <dbl>, CR220Q01T <dbl>, CR220Q01A <dbl>, DR220Q02RB <dbl>,
#> #   CR220Q02S <dbl>, CR220Q02T <dbl>, CR220Q02A <dbl>, DR220Q04R <dbl>,
#> #   CR220Q04S <dbl>, CR220Q04T <dbl>, CR220Q04A <dbl>, DR220Q05R <dbl>,
#> #   CR220Q05S <dbl>, CR220Q05T <dbl>, CR220Q05A <dbl>, DR220Q06R <dbl>,
#> #   CR220Q06S <dbl>, CR220Q06T <dbl>, CR220Q06A <dbl>, DR227Q01R <dbl>,
#> #   CR227Q01S <dbl>, CR227Q01T <dbl>, CR227Q01A <dbl>, DR227Q02RA <dbl>,
#> #   DR227Q02RB <dbl>, DR227Q02RC <dbl>, DR227Q02RD <dbl>,
#> #   DR227Q02RE <dbl>, DR227Q02RF <dbl>, DR227Q02RG <dbl>, CR227Q02S <dbl>,
#> #   CR227Q02T <dbl>, CR227Q02A <dbl>, DR227Q03C <dbl>, CR227Q03T <dbl>,
#> #   CR227Q03A <dbl>, DR227Q06C <dbl>, CR227Q06T <dbl>, CR227Q06A <dbl>,
#> #   DR111Q01R <dbl>, CR111Q01S <dbl>, CR111Q01T <dbl>, CR111Q01A <dbl>,
#> #   DR111Q02BC <dbl>, CR111Q02BT <dbl>, CR111Q02BA <dbl>,
#> #   DR111Q06RA <dbl>, DR111Q06C <dbl>, CR111Q06T <dbl>, CR111Q06A <dbl>,
#> #   DR055Q01R <dbl>, CR055Q01S <dbl>, CR055Q01T <dbl>, CR055Q01A <dbl>,
#> #   DR055Q02C <dbl>, CR055Q02T <dbl>, CR055Q02A <dbl>, ...
stu_quest
#> # A tibble: 5,712 x 922
#>    CNTRYID   CNT CNTSCHID CNTSTUID   CYC NatCen Region STRATUM SUBNATIO
#>      <int> <chr>    <int>    <dbl> <chr>  <chr>  <int>   <chr>    <int>
#>  1     840   USA 84000001 84006899  06MS 084000  84000 USA0103  8400000
#>  2     840   USA 84000001 84000625  06MS 084000  84000 USA0103  8400000
#>  3     840   USA 84000001 84007720  06MS 084000  84000 USA0103  8400000
#>  4     840   USA 84000001 84001279  06MS 084000  84000 USA0103  8400000
#>  5     840   USA 84000001 84000532  06MS 084000  84000 USA0103  8400000
#>  6     840   USA 84000001 84005284  06MS 084000  84000 USA0103  8400000
#>  7     840   USA 84000001 84001664  06MS 084000  84000 USA0103  8400000
#>  8     840   USA 84000001 84010771  06MS 084000  84000 USA0103  8400000
#>  9     840   USA 84000001 84003969  06MS 084000  84000 USA0103  8400000
#> 10     840   USA 84000001 84010965  06MS 084000  84000 USA0103  8400000
#> # ... with 5,702 more rows, and 913 more variables: OECD <int>,
#> #   ADMINMODE <int>, Option_CPS <int>, Option_FL <int>, Option_ICTQ <int>,
#> #   Option_ECQ <int>, Option_PQ <int>, Option_TQ <int>, Option_UH <int>,
#> #   Option_Read <chr>, Option_Math <chr>, LANGTEST_QQQ <int>,
#> #   LANGTEST_COG <int>, LANGTEST_PAQ <dbl>, CBASCI <int>, BOOKID <int>,
#> #   ST001D01T <int>, ST003D02T <int>, ST003D03T <int>, ST004D01T <int>,
#> #   ST005Q01TA <dbl>, ST006Q01TA <dbl>, ST006Q02TA <dbl>,
#> #   ST006Q03TA <dbl>, ST006Q04TA <dbl>, ST007Q01TA <dbl>,
#> #   ST008Q01TA <dbl>, ST008Q02TA <dbl>, ST008Q03TA <dbl>,
#> #   ST008Q04TA <dbl>, ST011Q01TA <dbl>, ST011Q02TA <dbl>,
#> #   ST011Q03TA <dbl>, ST011Q04TA <dbl>, ST011Q05TA <dbl>,
#> #   ST011Q06TA <dbl>, ST011Q07TA <dbl>, ST011Q08TA <dbl>,
#> #   ST011Q09TA <dbl>, ST011Q10TA <dbl>, ST011Q11TA <dbl>,
#> #   ST011Q12TA <dbl>, ST011Q16NA <dbl>, ST011D17TA <chr>,
#> #   ST011D18TA <chr>, ST011D19TA <chr>, ST012Q01TA <dbl>,
#> #   ST012Q02TA <dbl>, ST012Q03TA <dbl>, ST012Q05NA <dbl>,
#> #   ST012Q06NA <dbl>, ST012Q07NA <dbl>, ST012Q08NA <dbl>,
#> #   ST012Q09NA <dbl>, ST013Q01TA <dbl>, ST123Q01NA <dbl>,
#> #   ST123Q02NA <dbl>, ST123Q03NA <dbl>, ST123Q04NA <dbl>,
#> #   ST019AQ01T <dbl>, ST019BQ01T <dbl>, ST019CQ01T <dbl>,
#> #   ST021Q01TA <dbl>, ST022Q01TA <dbl>, ST124Q01TA <chr>,
#> #   ST125Q01NA <dbl>, ST126Q01TA <dbl>, ST127Q01TA <dbl>,
#> #   ST127Q02TA <dbl>, ST127Q03TA <dbl>, ST111Q01TA <dbl>,
#> #   ST118Q01NA <dbl>, ST118Q02NA <dbl>, ST118Q03NA <dbl>,
#> #   ST118Q04NA <dbl>, ST118Q05NA <dbl>, ST119Q01NA <dbl>,
#> #   ST119Q02NA <dbl>, ST119Q03NA <dbl>, ST119Q04NA <dbl>,
#> #   ST119Q05NA <dbl>, ST121Q01NA <dbl>, ST121Q02NA <dbl>,
#> #   ST121Q03NA <dbl>, ST082Q01NA <dbl>, ST082Q02NA <dbl>,
#> #   ST082Q03NA <dbl>, ST082Q08NA <dbl>, ST082Q09NA <dbl>,
#> #   ST082Q12NA <dbl>, ST082Q13NA <dbl>, ST082Q14NA <dbl>,
#> #   ST034Q01TA <dbl>, ST034Q02TA <dbl>, ST034Q03TA <dbl>,
#> #   ST034Q04TA <dbl>, ST034Q05TA <dbl>, ST034Q06TA <dbl>,
#> #   ST039Q01NA <dbl>, ST039Q02NA <dbl>, ...
tch_quest
#> # A tibble: 3,680 x 258
#>    CNTRYID   CNT CNTSCHID CNTTCHID TEACHERID   CYC NatCen Region STRATUM
#>      <int> <chr>    <int>    <dbl>     <dbl> <chr>  <chr>  <int>   <chr>
#>  1     840   USA 84000001 84002836         5  06MS 084000  84000 USA9797
#>  2     840   USA 84000001 84002300         5  06MS 084000  84000 USA9797
#>  3     840   USA 84000001 84002744         4  06MS 084000  84000 USA9797
#>  4     840   USA 84000001 84004456         4  06MS 084000  84000 USA9797
#>  5     840   USA 84000001 84003193       NaN  06MS 084000  84000 USA9797
#>  6     840   USA 84000001 84005254         5  06MS 084000  84000 USA9797
#>  7     840   USA 84000001 84004678         5  06MS 084000  84000 USA9797
#>  8     840   USA 84000001 84005815         5  06MS 084000  84000 USA9797
#>  9     840   USA 84000001 84003452         5  06MS 084000  84000 USA9797
#> 10     840   USA 84000001 84004120         5  06MS 084000  84000 USA9797
#> # ... with 3,670 more rows, and 249 more variables: SUBNATIO <chr>,
#> #   OECD <int>, ADMINMODE <int>, LANGTEST <dbl>, TC001Q01NA <dbl>,
#> #   TC002Q01NA <dbl>, TC004Q01NA <dbl>, TC005Q01NA <dbl>,
#> #   TC005Q02NA <dbl>, TC006Q01NA <dbl>, TC007Q01NA <dbl>,
#> #   TC007Q02NA <dbl>, TC012Q01NA <dbl>, TC013Q01NA <dbl>,
#> #   TC014Q01NA <dbl>, TC015Q01NA <dbl>, TC018Q01NA <dbl>,
#> #   TC018Q01NB <dbl>, TC018Q02NA <dbl>, TC018Q02NB <dbl>,
#> #   TC018Q03NA <dbl>, TC018Q03NB <dbl>, TC018Q04NA <dbl>,
#> #   TC018Q04NB <dbl>, TC018Q05NA <dbl>, TC018Q05NB <dbl>,
#> #   TC018Q06NA <dbl>, TC018Q06NB <dbl>, TC018Q07NA <dbl>,
#> #   TC018Q07NB <dbl>, TC018Q08NA <dbl>, TC018Q08NB <dbl>,
#> #   TC018Q09NA <dbl>, TC018Q09NB <dbl>, TC018Q10NA <dbl>,
#> #   TC018Q10NB <dbl>, TC018Q11NA <dbl>, TC018Q11NB <dbl>,
#> #   TC020Q01NA <dbl>, TC020Q02NA <dbl>, TC020Q03NA <dbl>,
#> #   TC020Q04NA <dbl>, TC020Q05NA <dbl>, TC020Q06NA <dbl>,
#> #   TC021Q01NA <dbl>, TC026Q01NA <dbl>, TC026Q02NA <dbl>,
#> #   TC026Q04NA <dbl>, TC026Q05NA <dbl>, TC026Q06NA <dbl>,
#> #   TC026Q07NA <dbl>, TC026Q09NA <dbl>, TC026Q10NA <dbl>,
#> #   TC028Q01NA <dbl>, TC028Q02NA <dbl>, TC028Q03NA <dbl>,
#> #   TC028Q04NA <dbl>, TC028Q05NA <dbl>, TC028Q06NA <dbl>,
#> #   TC028Q07NA <dbl>, TC028Q08NA <dbl>, TC029Q01NA <int>,
#> #   TC029Q02NA <int>, TC029Q03NA <int>, TC029Q04NA <dbl>,
#> #   TC030Q01NA <int>, TC030Q02NA <dbl>, TC030Q03NA <dbl>,
#> #   TC030Q04NA <dbl>, TC039Q01NA <dbl>, TC041Q01NA <dbl>,
#> #   TC041Q02NA <dbl>, TC041Q03NA <dbl>, TC041Q04NA <dbl>,
#> #   TC041Q05NA <dbl>, TC041Q06NA <dbl>, TC041Q07NA <dbl>,
#> #   TC041Q08NA <dbl>, TC043Q01NA <dbl>, TC031Q04NA <dbl>,
#> #   TC031Q07NA <dbl>, TC031Q11NA <dbl>, TC031Q13NA <dbl>,
#> #   TC031Q14NA <dbl>, TC031Q15NA <dbl>, TC031Q18NA <dbl>,
#> #   TC031Q20NA <dbl>, TC037Q01NA <dbl>, TC037Q02NA <dbl>,
#> #   TC037Q03NA <dbl>, TC037Q04NA <dbl>, TC037Q05NA <dbl>,
#> #   TC037Q06NA <dbl>, TC037Q07NA <dbl>, TC037Q08NA <dbl>,
#> #   TC037Q09NA <dbl>, TC037Q10NA <dbl>, TC037Q11NA <dbl>,
#> #   TC037Q12NA <dbl>, TC037Q13NA <dbl>, ...
sch_quest
#> # A tibble: 177 x 274
#>      CNT CNTRYID SCHID CNTSCHID   CYC NatCen Region STRATUM SUBNATIO  OECD
#>    <chr>   <int> <chr>    <int> <chr>  <chr>  <int>   <chr>    <chr> <int>
#>  1   USA     840 00001 84000001  06MS 084000  84000 USA0103  8400000     1
#>  2   USA     840 00003 84000003  06MS 084000  84000 USA0206  8400000     1
#>  3   USA     840 00004 84000004  06MS 084000  84000 USA0206  8400000     1
#>  4   USA     840 00006 84000006  06MS 084000  84000 USA0206  8400000     1
#>  5   USA     840 00007 84000007  06MS 084000  84000 USA0308  8400000     1
#>  6   USA     840 00008 84000008  06MS 084000  84000 USA0308  8400000     1
#>  7   USA     840 00009 84000009  06MS 084000  84000 USA0308  8400000     1
#>  8   USA     840 00011 84000011  06MS 084000  84000 USA0104  8400000     1
#>  9   USA     840 00012 84000012  06MS 084000  84000 USA0308  8400000     1
#> 10   USA     840 00013 84000013  06MS 084000  84000 USA0102  8400000     1
#> # ... with 167 more rows, and 264 more variables: ADMINMODE <int>,
#> #   LANGTEST <dbl>, SC001Q01TA <dbl>, SC002Q01TA <dbl>, SC002Q02TA <dbl>,
#> #   SC003Q01TA <dbl>, SC004Q01TA <dbl>, SC004Q02TA <dbl>,
#> #   SC004Q03TA <dbl>, SC004Q04NA <dbl>, SC004Q05NA <dbl>,
#> #   SC004Q06NA <dbl>, SC004Q07NA <dbl>, SC053Q01TA <dbl>,
#> #   SC053Q02TA <dbl>, SC053Q03TA <dbl>, SC053Q04TA <dbl>,
#> #   SC053Q05NA <dbl>, SC053Q06NA <dbl>, SC053Q07TA <dbl>,
#> #   SC053Q08TA <dbl>, SC053Q09TA <dbl>, SC053Q10TA <dbl>,
#> #   SC053D11TA <chr>, SC059Q01NA <dbl>, SC059Q02NA <dbl>,
#> #   SC059Q03NA <dbl>, SC059Q04NA <dbl>, SC059Q05NA <dbl>,
#> #   SC059Q06NA <dbl>, SC059Q07NA <dbl>, SC059Q08NA <dbl>,
#> #   SC052Q01NA <dbl>, SC052Q02NA <dbl>, SC009Q01TA <dbl>,
#> #   SC009Q02TA <dbl>, SC009Q03TA <dbl>, SC009Q04TA <dbl>,
#> #   SC009Q05TA <dbl>, SC009Q06TA <dbl>, SC009Q07TA <dbl>,
#> #   SC009Q08TA <dbl>, SC009Q09TA <dbl>, SC009Q10TA <dbl>,
#> #   SC009Q11TA <dbl>, SC009Q12TA <dbl>, SC009Q13TA <dbl>,
#> #   SC010Q01TA <dbl>, SC010Q01TB <dbl>, SC010Q01TC <dbl>,
#> #   SC010Q01TD <dbl>, SC010Q01TE <dbl>, SC010Q02TA <dbl>,
#> #   SC010Q02TB <dbl>, SC010Q02TC <dbl>, SC010Q02TD <dbl>,
#> #   SC010Q02TE <dbl>, SC010Q03TA <dbl>, SC010Q03TB <dbl>,
#> #   SC010Q03TC <dbl>, SC010Q03TD <dbl>, SC010Q03TE <dbl>,
#> #   SC010Q04TA <dbl>, SC010Q04TB <dbl>, SC010Q04TC <dbl>,
#> #   SC010Q04TD <dbl>, SC010Q04TE <dbl>, SC010Q05TA <dbl>,
#> #   SC010Q05TB <dbl>, SC010Q05TC <dbl>, SC010Q05TD <dbl>,
#> #   SC010Q05TE <dbl>, SC010Q06TA <dbl>, SC010Q06TB <dbl>,
#> #   SC010Q06TC <dbl>, SC010Q06TD <dbl>, SC010Q06TE <dbl>,
#> #   SC010Q07TA <dbl>, SC010Q07TB <dbl>, SC010Q07TC <dbl>,
#> #   SC010Q07TD <dbl>, SC010Q07TE <dbl>, SC010Q08TA <dbl>,
#> #   SC010Q08TB <dbl>, SC010Q08TC <dbl>, SC010Q08TD <dbl>,
#> #   SC010Q08TE <dbl>, SC010Q09TA <dbl>, SC010Q09TB <dbl>,
#> #   SC010Q09TC <dbl>, SC010Q09TD <dbl>, SC010Q09TE <dbl>,
#> #   SC010Q10TA <dbl>, SC010Q10TB <dbl>, SC010Q10TC <dbl>,
#> #   SC010Q10TD <dbl>, SC010Q10TE <dbl>, SC010Q11TA <dbl>,
#> #   SC010Q11TB <dbl>, SC010Q11TC <dbl>, ...
```

Merging datasets
----------------

Joining the student assessment and student questionnaire:

``` r
library(dplyr)
left_join(stu_assess, stu_quest, by = "CNTSTUID")
#> # A tibble: 5,712 x 2,970
#>    CNTRYID.x CNT.x CNTSCHID.x CNTSTUID CYC.x NatCen.x Region.x STRATUM.x
#>        <int> <chr>      <int>    <dbl> <chr>    <chr>    <int>     <chr>
#>  1       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#>  2       840   USA   84000001 84000625  06MS   084000    84000   USA0103
#>  3       840   USA   84000001 84007720  06MS   084000    84000   USA0103
#>  4       840   USA   84000001 84001279  06MS   084000    84000   USA0103
#>  5       840   USA   84000001 84000532  06MS   084000    84000   USA0103
#>  6       840   USA   84000001 84005284  06MS   084000    84000   USA0103
#>  7       840   USA   84000001 84001664  06MS   084000    84000   USA0103
#>  8       840   USA   84000001 84010771  06MS   084000    84000   USA0103
#>  9       840   USA   84000001 84003969  06MS   084000    84000   USA0103
#> 10       840   USA   84000001 84010965  06MS   084000    84000   USA0103
#> # ... with 5,702 more rows, and 2962 more variables: SUBNATIO.x <chr>,
#> #   OECD.x <int>, ADMINMODE.x <int>, Option_CPS.x <int>,
#> #   Option_FL.x <int>, Option_UH.x <int>, Option_Read.x <chr>,
#> #   Option_Math.x <chr>, LANGTEST_QQQ.x <int>, LANGTEST_COG.x <int>,
#> #   LANGTEST_PAQ.x <dbl>, CBASCI.x <dbl>, BOOKID.x <int>,
#> #   DR219Q01AC <dbl>, DR219Q01BC <dbl>, DR219Q01CC <dbl>,
#> #   DR219Q01DC <dbl>, DR219Q01EC <dbl>, DR219Q01C <dbl>, CR219Q01T <dbl>,
#> #   CR219Q01A <dbl>, DR219Q02C <dbl>, CR219Q02T <dbl>, CR219Q02A <dbl>,
#> #   DR067Q01R <dbl>, CR067Q01S <dbl>, CR067Q01T <dbl>, CR067Q01A <dbl>,
#> #   DR067Q04C <dbl>, CR067Q04T <dbl>, CR067Q04A <dbl>, DR067Q05C <dbl>,
#> #   CR067Q05T <dbl>, CR067Q05A <dbl>, DR102Q04C <dbl>, CR102Q04T <dbl>,
#> #   CR102Q04A <dbl>, DR102Q05C <dbl>, CR102Q05T <dbl>, CR102Q05A <dbl>,
#> #   DR102Q07R <dbl>, CR102Q07S <dbl>, CR102Q07T <dbl>, CR102Q07A <dbl>,
#> #   CR220Q01S <dbl>, CR220Q01T <dbl>, CR220Q01A <dbl>, DR220Q02RB <dbl>,
#> #   CR220Q02S <dbl>, CR220Q02T <dbl>, CR220Q02A <dbl>, DR220Q04R <dbl>,
#> #   CR220Q04S <dbl>, CR220Q04T <dbl>, CR220Q04A <dbl>, DR220Q05R <dbl>,
#> #   CR220Q05S <dbl>, CR220Q05T <dbl>, CR220Q05A <dbl>, DR220Q06R <dbl>,
#> #   CR220Q06S <dbl>, CR220Q06T <dbl>, CR220Q06A <dbl>, DR227Q01R <dbl>,
#> #   CR227Q01S <dbl>, CR227Q01T <dbl>, CR227Q01A <dbl>, DR227Q02RA <dbl>,
#> #   DR227Q02RB <dbl>, DR227Q02RC <dbl>, DR227Q02RD <dbl>,
#> #   DR227Q02RE <dbl>, DR227Q02RF <dbl>, DR227Q02RG <dbl>, CR227Q02S <dbl>,
#> #   CR227Q02T <dbl>, CR227Q02A <dbl>, DR227Q03C <dbl>, CR227Q03T <dbl>,
#> #   CR227Q03A <dbl>, DR227Q06C <dbl>, CR227Q06T <dbl>, CR227Q06A <dbl>,
#> #   DR111Q01R <dbl>, CR111Q01S <dbl>, CR111Q01T <dbl>, CR111Q01A <dbl>,
#> #   DR111Q02BC <dbl>, CR111Q02BT <dbl>, CR111Q02BA <dbl>,
#> #   DR111Q06RA <dbl>, DR111Q06C <dbl>, CR111Q06T <dbl>, CR111Q06A <dbl>,
#> #   DR055Q01R <dbl>, CR055Q01S <dbl>, CR055Q01T <dbl>, CR055Q01A <dbl>,
#> #   DR055Q02C <dbl>, CR055Q02T <dbl>, ...
```

Joining student-level data (either the student assessment or student questionnaire) with teacher or school questionnaires:

``` r
left_join(stu_quest, tch_quest, by = "SCHID")
#> # A tibble: 125,209 x 1,179
#>    CNTRYID.x CNT.x CNTSCHID.x CNTSTUID CYC.x NatCen.x Region.x STRATUM.x
#>        <int> <chr>      <int>    <dbl> <chr>    <chr>    <int>     <chr>
#>  1       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#>  2       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#>  3       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#>  4       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#>  5       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#>  6       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#>  7       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#>  8       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#>  9       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#> 10       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#> # ... with 125,199 more rows, and 1171 more variables: SUBNATIO.x <int>,
#> #   OECD.x <int>, ADMINMODE.x <int>, Option_CPS <int>, Option_FL <int>,
#> #   Option_ICTQ <int>, Option_ECQ <int>, Option_PQ <int>, Option_TQ <int>,
#> #   Option_UH <int>, Option_Read <chr>, Option_Math <chr>,
#> #   LANGTEST_QQQ <int>, LANGTEST_COG <int>, LANGTEST_PAQ <dbl>,
#> #   CBASCI <int>, BOOKID <int>, ST001D01T <int>, ST003D02T <int>,
#> #   ST003D03T <int>, ST004D01T <int>, ST005Q01TA <dbl>, ST006Q01TA <dbl>,
#> #   ST006Q02TA <dbl>, ST006Q03TA <dbl>, ST006Q04TA <dbl>,
#> #   ST007Q01TA <dbl>, ST008Q01TA <dbl>, ST008Q02TA <dbl>,
#> #   ST008Q03TA <dbl>, ST008Q04TA <dbl>, ST011Q01TA <dbl>,
#> #   ST011Q02TA <dbl>, ST011Q03TA <dbl>, ST011Q04TA <dbl>,
#> #   ST011Q05TA <dbl>, ST011Q06TA <dbl>, ST011Q07TA <dbl>,
#> #   ST011Q08TA <dbl>, ST011Q09TA <dbl>, ST011Q10TA <dbl>,
#> #   ST011Q11TA <dbl>, ST011Q12TA <dbl>, ST011Q16NA <dbl>,
#> #   ST011D17TA <chr>, ST011D18TA <chr>, ST011D19TA <chr>,
#> #   ST012Q01TA <dbl>, ST012Q02TA <dbl>, ST012Q03TA <dbl>,
#> #   ST012Q05NA <dbl>, ST012Q06NA <dbl>, ST012Q07NA <dbl>,
#> #   ST012Q08NA <dbl>, ST012Q09NA <dbl>, ST013Q01TA <dbl>,
#> #   ST123Q01NA <dbl>, ST123Q02NA <dbl>, ST123Q03NA <dbl>,
#> #   ST123Q04NA <dbl>, ST019AQ01T <dbl>, ST019BQ01T <dbl>,
#> #   ST019CQ01T <dbl>, ST021Q01TA <dbl>, ST022Q01TA <dbl>,
#> #   ST124Q01TA <chr>, ST125Q01NA <dbl>, ST126Q01TA <dbl>,
#> #   ST127Q01TA <dbl>, ST127Q02TA <dbl>, ST127Q03TA <dbl>,
#> #   ST111Q01TA <dbl>, ST118Q01NA <dbl>, ST118Q02NA <dbl>,
#> #   ST118Q03NA <dbl>, ST118Q04NA <dbl>, ST118Q05NA <dbl>,
#> #   ST119Q01NA <dbl>, ST119Q02NA <dbl>, ST119Q03NA <dbl>,
#> #   ST119Q04NA <dbl>, ST119Q05NA <dbl>, ST121Q01NA <dbl>,
#> #   ST121Q02NA <dbl>, ST121Q03NA <dbl>, ST082Q01NA <dbl>,
#> #   ST082Q02NA <dbl>, ST082Q03NA <dbl>, ST082Q08NA <dbl>,
#> #   ST082Q09NA <dbl>, ST082Q12NA <dbl>, ST082Q13NA <dbl>,
#> #   ST082Q14NA <dbl>, ST034Q01TA <dbl>, ST034Q02TA <dbl>,
#> #   ST034Q03TA <dbl>, ST034Q04TA <dbl>, ST034Q05TA <dbl>,
#> #   ST034Q06TA <dbl>, ST039Q01NA <dbl>, ...
left_join(stu_assess, tch_quest, by = "SCHID")
#> # A tibble: 125,209 x 2,306
#>    CNTRYID.x CNT.x CNTSCHID.x CNTSTUID CYC.x NatCen.x Region.x STRATUM.x
#>        <int> <chr>      <int>    <dbl> <chr>    <chr>    <int>     <chr>
#>  1       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#>  2       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#>  3       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#>  4       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#>  5       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#>  6       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#>  7       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#>  8       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#>  9       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#> 10       840   USA   84000001 84006899  06MS   084000    84000   USA0103
#> # ... with 125,199 more rows, and 2298 more variables: SUBNATIO.x <chr>,
#> #   OECD.x <int>, ADMINMODE.x <int>, Option_CPS <int>, Option_FL <int>,
#> #   Option_UH <int>, Option_Read <chr>, Option_Math <chr>,
#> #   LANGTEST_QQQ <int>, LANGTEST_COG <int>, LANGTEST_PAQ <dbl>,
#> #   CBASCI <dbl>, BOOKID <int>, DR219Q01AC <dbl>, DR219Q01BC <dbl>,
#> #   DR219Q01CC <dbl>, DR219Q01DC <dbl>, DR219Q01EC <dbl>, DR219Q01C <dbl>,
#> #   CR219Q01T <dbl>, CR219Q01A <dbl>, DR219Q02C <dbl>, CR219Q02T <dbl>,
#> #   CR219Q02A <dbl>, DR067Q01R <dbl>, CR067Q01S <dbl>, CR067Q01T <dbl>,
#> #   CR067Q01A <dbl>, DR067Q04C <dbl>, CR067Q04T <dbl>, CR067Q04A <dbl>,
#> #   DR067Q05C <dbl>, CR067Q05T <dbl>, CR067Q05A <dbl>, DR102Q04C <dbl>,
#> #   CR102Q04T <dbl>, CR102Q04A <dbl>, DR102Q05C <dbl>, CR102Q05T <dbl>,
#> #   CR102Q05A <dbl>, DR102Q07R <dbl>, CR102Q07S <dbl>, CR102Q07T <dbl>,
#> #   CR102Q07A <dbl>, CR220Q01S <dbl>, CR220Q01T <dbl>, CR220Q01A <dbl>,
#> #   DR220Q02RB <dbl>, CR220Q02S <dbl>, CR220Q02T <dbl>, CR220Q02A <dbl>,
#> #   DR220Q04R <dbl>, CR220Q04S <dbl>, CR220Q04T <dbl>, CR220Q04A <dbl>,
#> #   DR220Q05R <dbl>, CR220Q05S <dbl>, CR220Q05T <dbl>, CR220Q05A <dbl>,
#> #   DR220Q06R <dbl>, CR220Q06S <dbl>, CR220Q06T <dbl>, CR220Q06A <dbl>,
#> #   DR227Q01R <dbl>, CR227Q01S <dbl>, CR227Q01T <dbl>, CR227Q01A <dbl>,
#> #   DR227Q02RA <dbl>, DR227Q02RB <dbl>, DR227Q02RC <dbl>,
#> #   DR227Q02RD <dbl>, DR227Q02RE <dbl>, DR227Q02RF <dbl>,
#> #   DR227Q02RG <dbl>, CR227Q02S <dbl>, CR227Q02T <dbl>, CR227Q02A <dbl>,
#> #   DR227Q03C <dbl>, CR227Q03T <dbl>, CR227Q03A <dbl>, DR227Q06C <dbl>,
#> #   CR227Q06T <dbl>, CR227Q06A <dbl>, DR111Q01R <dbl>, CR111Q01S <dbl>,
#> #   CR111Q01T <dbl>, CR111Q01A <dbl>, DR111Q02BC <dbl>, CR111Q02BT <dbl>,
#> #   CR111Q02BA <dbl>, DR111Q06RA <dbl>, DR111Q06C <dbl>, CR111Q06T <dbl>,
#> #   CR111Q06A <dbl>, DR055Q01R <dbl>, CR055Q01S <dbl>, CR055Q01T <dbl>,
#> #   CR055Q01A <dbl>, DR055Q02C <dbl>, CR055Q02T <dbl>, ...
```

Joining teacher and school questionnaires:

``` r
left_join(tch_quest, sch_quest, by = "SCHID")
#> # A tibble: 3,680 x 531
#>    CNTRYID.x CNT.x CNTSCHID.x CNTTCHID TEACHERID CYC.x NatCen.x Region.x
#>        <int> <chr>      <int>    <dbl>     <dbl> <chr>    <chr>    <int>
#>  1       840   USA   84000001 84002836         5  06MS   084000    84000
#>  2       840   USA   84000001 84002300         5  06MS   084000    84000
#>  3       840   USA   84000001 84002744         4  06MS   084000    84000
#>  4       840   USA   84000001 84004456         4  06MS   084000    84000
#>  5       840   USA   84000001 84003193       NaN  06MS   084000    84000
#>  6       840   USA   84000001 84005254         5  06MS   084000    84000
#>  7       840   USA   84000001 84004678         5  06MS   084000    84000
#>  8       840   USA   84000001 84005815         5  06MS   084000    84000
#>  9       840   USA   84000001 84003452         5  06MS   084000    84000
#> 10       840   USA   84000001 84004120         5  06MS   084000    84000
#> # ... with 3,670 more rows, and 523 more variables: STRATUM.x <chr>,
#> #   SUBNATIO.x <chr>, OECD.x <int>, ADMINMODE.x <int>, LANGTEST.x <dbl>,
#> #   TC001Q01NA <dbl>, TC002Q01NA <dbl>, TC004Q01NA <dbl>,
#> #   TC005Q01NA <dbl>, TC005Q02NA <dbl>, TC006Q01NA <dbl>,
#> #   TC007Q01NA <dbl>, TC007Q02NA <dbl>, TC012Q01NA <dbl>,
#> #   TC013Q01NA <dbl>, TC014Q01NA <dbl>, TC015Q01NA <dbl>,
#> #   TC018Q01NA <dbl>, TC018Q01NB <dbl>, TC018Q02NA <dbl>,
#> #   TC018Q02NB <dbl>, TC018Q03NA <dbl>, TC018Q03NB <dbl>,
#> #   TC018Q04NA <dbl>, TC018Q04NB <dbl>, TC018Q05NA <dbl>,
#> #   TC018Q05NB <dbl>, TC018Q06NA <dbl>, TC018Q06NB <dbl>,
#> #   TC018Q07NA <dbl>, TC018Q07NB <dbl>, TC018Q08NA <dbl>,
#> #   TC018Q08NB <dbl>, TC018Q09NA <dbl>, TC018Q09NB <dbl>,
#> #   TC018Q10NA <dbl>, TC018Q10NB <dbl>, TC018Q11NA <dbl>,
#> #   TC018Q11NB <dbl>, TC020Q01NA <dbl>, TC020Q02NA <dbl>,
#> #   TC020Q03NA <dbl>, TC020Q04NA <dbl>, TC020Q05NA <dbl>,
#> #   TC020Q06NA <dbl>, TC021Q01NA <dbl>, TC026Q01NA <dbl>,
#> #   TC026Q02NA <dbl>, TC026Q04NA <dbl>, TC026Q05NA <dbl>,
#> #   TC026Q06NA <dbl>, TC026Q07NA <dbl>, TC026Q09NA <dbl>,
#> #   TC026Q10NA <dbl>, TC028Q01NA <dbl>, TC028Q02NA <dbl>,
#> #   TC028Q03NA <dbl>, TC028Q04NA <dbl>, TC028Q05NA <dbl>,
#> #   TC028Q06NA <dbl>, TC028Q07NA <dbl>, TC028Q08NA <dbl>,
#> #   TC029Q01NA <int>, TC029Q02NA <int>, TC029Q03NA <int>,
#> #   TC029Q04NA <dbl>, TC030Q01NA <int>, TC030Q02NA <dbl>,
#> #   TC030Q03NA <dbl>, TC030Q04NA <dbl>, TC039Q01NA <dbl>,
#> #   TC041Q01NA <dbl>, TC041Q02NA <dbl>, TC041Q03NA <dbl>,
#> #   TC041Q04NA <dbl>, TC041Q05NA <dbl>, TC041Q06NA <dbl>,
#> #   TC041Q07NA <dbl>, TC041Q08NA <dbl>, TC043Q01NA <dbl>,
#> #   TC031Q04NA <dbl>, TC031Q07NA <dbl>, TC031Q11NA <dbl>,
#> #   TC031Q13NA <dbl>, TC031Q14NA <dbl>, TC031Q15NA <dbl>,
#> #   TC031Q18NA <dbl>, TC031Q20NA <dbl>, TC037Q01NA <dbl>,
#> #   TC037Q02NA <dbl>, TC037Q03NA <dbl>, TC037Q04NA <dbl>,
#> #   TC037Q05NA <dbl>, TC037Q06NA <dbl>, TC037Q07NA <dbl>,
#> #   TC037Q08NA <dbl>, TC037Q09NA <dbl>, TC037Q10NA <dbl>,
#> #   TC037Q11NA <dbl>, TC037Q12NA <dbl>, ...
```
