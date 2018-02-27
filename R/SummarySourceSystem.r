# Netherlands Biodiversity Api
# 
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
# 
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SummarySourceSystem Class
#'
#' @field code 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SummarySourceSystem <- R6::R6Class(
  'SummarySourceSystem',
  public = list(
    `code` = NULL,
    initialize = function(`code`){
      if (!missing(`code`)) {
        stopifnot(is.character(`code`), length(`code`) == 1)
        self$`code` <- `code`
      }
    },
    toJSON = function() {
      SummarySourceSystemObject <- list()
      if (!is.null(self$`code`)) {
        SummarySourceSystemObject[['code']] <- self$`code`
      }

      SummarySourceSystemObject
    },
    fromJSON = function(SummarySourceSystemJson) {
      SummarySourceSystemObject <- jsonlite::fromJSON(SummarySourceSystemJson)
      if (!is.null(SummarySourceSystemObject$`code`)) {
        self$`code` <- SummarySourceSystemObject$`code`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "code": %s
        }',
        self$`code`
      )
    },
    fromJSONString = function(SummarySourceSystemJson) {
      SummarySourceSystemObject <- jsonlite::fromJSON(SummarySourceSystemJson)
      self$`code` <- SummarySourceSystemObject$`code`
    }
  )
)