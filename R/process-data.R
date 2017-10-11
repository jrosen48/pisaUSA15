# # process-data.R
#
# library(readr)
# library(dplyr)
# library(tidyr)
# library(stringr)
#
# stu_quest <- read_rds("raw_data/stu_quest.rds")
# stu_quest <- as_tibble(stu_quest)
# stu_quest <- mutate(stu_quest,
#                     SCHID = str_sub(CNTSCHID, start = 4))
# devtools::use_data(stu_quest, overwrite = TRUE)
#
# stu_assess <- read_rds("raw_data/stu_assess.rds")
# stu_assess <- as_tibble(stu_assess)
# stu_assess <- mutate(stu_assess,
#                      SCHID = str_sub(CNTSCHID, start = 4))
# devtools::use_data(stu_assess, overwrite = TRUE)
#
# sch_quest <- read_rds("raw_data/sch_quest.rds")
# sch_quest <- as_tibble(sch_quest)
# sch_quest <- mutate(sch_quest,
#                     SCHID = str_sub(CNTSCHID, start = 4))
# sch_quest <- select(sch_quest, CNT, CNTRYID, SCHID, CNTSCHID, everything())
# devtools::use_data(sch_quest, overwrite = TRUE)
#
# tch_quest <- read_rds("raw_data/tch_quest.rds")
# tch_quest <- as_tibble(tch_quest)
# tch_quest <- mutate(tch_quest,
#                     SCHID = str_sub(CNTSCHID, start = 4))
# devtools::use_data(tch_quest, overwrite = TRUE)
#
# escs_2012 <- read_rds("raw_data/escs_2012.rds")
# escs_2012 <- as_tibble(escs_2012)
# escs_2012 <- rename(escs_2012, CNT = cnt, SCHID = schoolid)
# escs_2012 <- mutate(escs_2012,
#                     SCHID = str_sub(SCHID, start = 3))
# devtools::use_data(escs_2012, overwrite = TRUE)
#
# # joining stu assessment and stu questionnaire
# x <- left_join(stu_assess, stu_quest, by = "CNTSTUID")
#
# # joining teacher or school data with ESCS data
# x <- left_join(tch_quest, escs_2012, by = "SCHID")
#
# # joining stu data with teacher or school data
# x <- left_join(stu_quest, tch_quest, by = "SCHID")
# x <- left_join(stu_quest, escs_2012, by = "SCHID")
#
# x <- left_join(stu_assess, tch_quest, by = "SCHID")
# x <- left_join(stu_assess, escs_2012, by = "SCHID")
