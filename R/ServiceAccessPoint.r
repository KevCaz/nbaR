# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ServiceAccessPoint Class
#'
#' @field accessUri 
#' @field format 
#' @field variant 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServiceAccessPoint <- R6::R6Class(
  'ServiceAccessPoint',
  public = list(
    `accessUri` = NULL,
    `format` = NULL,
    `variant` = NULL,
    initialize = function(`accessUri`, `format`, `variant`){
      if (!missing(`accessUri`)) {
        stopifnot(is.character(`accessUri`), length(`accessUri`) == 1)
        self[['accessUri']] <- `accessUri`
      }
      if (!missing(`format`)) {
        stopifnot(is.character(`format`), length(`format`) == 1)
        self[['format']] <- `format`
      }
      if (!missing(`variant`)) {
        stopifnot(is.character(`variant`), length(`variant`) == 1)
        self[['variant']] <- `variant`
      }
    },

    toList = function() {
      ServiceAccessPointList <- list()
        if (!is.null(self[['accessUri']])) {
        ServiceAccessPointList[['accessUri']] <- self[['accessUri']]
      }
        if (!is.null(self[['format']])) {
        ServiceAccessPointList[['format']] <- self[['format']]
      }
        if (!is.null(self[['variant']])) {
        ServiceAccessPointList[['variant']] <- self[['variant']]
      }
      ## omit empty nested lists in returned list
      ServiceAccessPointList[sapply(ServiceAccessPointList, length) > 0]
      },

    fromList = function(ServiceAccessPointList, typeObject=NULL) {
      if (!is.null(ServiceAccessPointList[['accessUri']])) {      
          self[['accessUri']] <- ServiceAccessPointList[['accessUri']]
      }
      if (!is.null(ServiceAccessPointList[['format']])) {      
          self[['format']] <- ServiceAccessPointList[['format']]
      }
      if (!is.null(ServiceAccessPointList[['variant']])) {      
          self[['variant']] <- ServiceAccessPointList[['variant']]
      }
      return(self)
    },

    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(ServiceAccessPointJson, typeObject=NULL) {
      ServiceAccessPointList <- jsonlite::fromJSON(ServiceAccessPointJson, simplifyVector=F)
      self[['accessUri']] <- ServiceAccessPointList[['accessUri']]
      self[['format']] <- ServiceAccessPointList[['format']]
      self[['variant']] <- ServiceAccessPointList[['variant']]
      invisible(self)
    }
  )
)
