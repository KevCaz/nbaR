# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' QueryResult Class
#'
#' @field totalSize 
#' @field resultSet 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QueryResult <- R6::R6Class(
  'QueryResult',
  public = list(
    `totalSize` = NULL,
    `resultSet` = NULL,
    initialize = function(`totalSize`, `resultSet`){
      if (!missing(`totalSize`)) {
        stopifnot(is.numeric(`totalSize`), length(`totalSize`) == 1)
        self[['totalSize']] <- `totalSize`
      }
      if (!missing(`resultSet`)) {
        stopifnot(is.list(`resultSet`), length(`resultSet`) != 0)
        lapply(`resultSet`, function(x) stopifnot(R6::is.R6(x)))
        self[['resultSet']] <- `resultSet`
      }
    },

    toList = function() {
      QueryResultList <- list()
        if (!is.null(self[['totalSize']])) {
        QueryResultList[['totalSize']] <- self[['totalSize']]
      }
        if (!is.null(self[['resultSet']])) {
        QueryResultList[['resultSet']] <- lapply(self[['resultSet']], function(x) x$toList())
      }
      ## omit empty nested lists in returned list
      QueryResultList[sapply(QueryResultList, length) > 0]
      },

    fromList = function(QueryResultList, typeObject=NULL) {
      if (!is.null(QueryResultList[['totalSize']])) {      
          self[['totalSize']] <- QueryResultList[['totalSize']]
      }
      if (!is.null(QueryResultList[['resultSet']])) {      
          self[['resultSet']] <- lapply(QueryResultList[['resultSet']], function(x) {
             QueryResultItemObject$new()$fromList(x, typeObject=typeObject)            
          })
      }
      return(self)
    },

    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(QueryResultJson, typeObject=NULL) {
      QueryResultList <- jsonlite::fromJSON(QueryResultJson, simplifyVector=F)
      self[['totalSize']] <- QueryResultList[['totalSize']]
      self[['resultSet']] <- lapply(QueryResultList[['resultSet']],
                                        function(x) QueryResultItemObject$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE), typeObject=typeObject))
      invisible(self)
    }
  )
)
