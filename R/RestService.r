# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' RestService Class
#'
#' @field endPoint 
#' @field method 
#' @field consumes 
#' @field produces 
#' @field url 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RestService <- R6::R6Class(
  'RestService',
  public = list(
    `endPoint` = NULL,
    `method` = NULL,
    `consumes` = NULL,
    `produces` = NULL,
    `url` = NULL,
    initialize = function(`endPoint`, `method`, `consumes`, `produces`, `url`){
      if (!missing(`endPoint`)) {
        stopifnot(is.character(`endPoint`), length(`endPoint`) == 1)
        self[['endPoint']] <- `endPoint`
      }
      if (!missing(`method`)) {
        stopifnot(is.character(`method`), length(`method`) == 1)
        self[['method']] <- `method`
      }
      if (!missing(`consumes`)) {
        stopifnot(is.character(`consumes`), length(`consumes`) == 1)
        self[['consumes']] <- `consumes`
      }
      if (!missing(`produces`)) {
        stopifnot(is.character(`produces`), length(`produces`) == 1)
        self[['produces']] <- `produces`
      }
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self[['url']] <- `url`
      }
    },

    toList = function() {
      RestServiceList <- list()
        if (!is.null(self[['endPoint']])) {
        RestServiceList[['endPoint']] <- self[['endPoint']]
      }
        if (!is.null(self[['method']])) {
        RestServiceList[['method']] <- self[['method']]
      }
        if (!is.null(self[['consumes']])) {
        RestServiceList[['consumes']] <- self[['consumes']]
      }
        if (!is.null(self[['produces']])) {
        RestServiceList[['produces']] <- self[['produces']]
      }
        if (!is.null(self[['url']])) {
        RestServiceList[['url']] <- self[['url']]
      }
      ## omit empty nested lists in returned list
      RestServiceList[sapply(RestServiceList, length) > 0]
      },

    fromList = function(RestServiceList, typeMapping=NULL) {
      if (!is.null(RestServiceList[['endPoint']])) {      
          self[['endPoint']] <- RestServiceList[['endPoint']]
      }
      if (!is.null(RestServiceList[['method']])) {      
          self[['method']] <- RestServiceList[['method']]
      }
      if (!is.null(RestServiceList[['consumes']])) {      
          self[['consumes']] <- RestServiceList[['consumes']]
      }
      if (!is.null(RestServiceList[['produces']])) {      
          self[['produces']] <- RestServiceList[['produces']]
      }
      if (!is.null(RestServiceList[['url']])) {      
          self[['url']] <- RestServiceList[['url']]
      }
      return(self)
    },

    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(RestServiceJson, typeMapping=NULL) {
      RestServiceList <- jsonlite::fromJSON(RestServiceJson, simplifyVector=F)
      self[['endPoint']] <- RestServiceList[['endPoint']]
      self[['method']] <- RestServiceList[['method']]
      self[['consumes']] <- RestServiceList[['consumes']]
      self[['produces']] <- RestServiceList[['produces']]
      self[['url']] <- RestServiceList[['url']]
      invisible(self)
    }
  )
)
