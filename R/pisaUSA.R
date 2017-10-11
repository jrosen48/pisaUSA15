#' All student questionnaire data from the 2015 PISA for students in the United States
#'
#' @source http://www.oecd.org/pisa/data/
#' @format Data frame with columns
#' #' \describe{
#'   \item{CNTSTUID}{international student ID}
#'   \item{SCHID}{international school ID}
#'   ...
#' }
#' @import tibble

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
#' @import tibble

"stu_assess"

#' School-level items for responses in the USA
#'
#' @source http://www.oecd.org/pisa/data/
#' @format Data frame with columns
#' #' \describe{
#'   \item{SCHID}{international school ID}
#'   ...
#' }
#' @import tibble

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
#' @import tibble

"tch_quest"

#' Open codebook
#' @details Open the codebook in a web browser
#' @return Launches a web browser
#' @export

open_codebook <- function(){
    browseURL("http://www.oecd.org/pisa/data/2015database/Codebook_CMB.xlsx")
}
