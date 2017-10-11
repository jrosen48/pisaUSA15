#' All student questionnaire data from the 2015 PISA for students in the United States
#'
#' @source http://www.oecd.org/pisa/data/
#' @format Data frame with columns
#' #' \describe{
#'   \item{CNTSTUID}{international student ID}
#'   \item{SCHID}{international school ID}
#'   ...
#' }
#' @importFrom tibble tibble

"stu_quest"

#' All student assessment data from the 2015 PISA for students in the United States
#'
#' @source http://www.oecd.org/pisa/data/
#' @format Data frame with columns
#' #' \describe{
#'   \item{CNTSTUID}{international student ID}
#'   \item{SCHID}{international school ID}
#'   ...
#' }
#' @importFrom tibble tibble

"stu_assess"

#' School-level items for responses in the USA
#'
#' @source http://www.oecd.org/pisa/data/
#' @format Data frame with columns
#' #' \describe{
#'   \item{SCHID}{international school ID}
#'   ...
#' }
#' @importFrom tibble tibble

"sch_quest"

#' Items from the PISA 2015 teacher questionnaire for responses in the USA
#'
#' @source http://www.oecd.org/pisa/data/
#' @format Data frame with columns
#' #' \describe{
#'   \item{SCHID}{international school ID}
#'   \item{CNTTCHID}{international teacher ID}
#'   ...
#' }
#' @importFrom tibble tibble

"tch_quest"
