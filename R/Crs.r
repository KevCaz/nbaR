# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Crs Class
#'
#' @field type 
#' @field properties 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Crs <- R6::R6Class(
  'Crs',
  public = list(
    `type` = NULL,
    `properties` = NULL,
    initialize = function(`type`, `properties`){
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self[['type']] <- `type`
      }
      if (!missing(`properties`)) {
        stopifnot(R6::is.R6(`properties`))
        self[['properties']] <- `properties`
      }
    },

    toList = function() {
      CrsList <- list()
        if (!is.null(self[['type']])) {
        CrsList[['type']] <- self[['type']]
      }
        if (!is.null(self[['properties']])) {
        CrsList[['properties']] <- self[['properties']]$toList()
      }
      ## omit empty nested lists in returned list
      CrsList[sapply(CrsList, length) > 0]
      },

    fromList = function(CrsList, typeObject=NULL) {
      if (!is.null(CrsList[['type']])) {      
          self[['type']] <- CrsList[['type']]
      }
      if (!is.null(CrsList[['properties']])) {      
          if (is.null(typeObject)) {
              self[['properties']] <- Specimen$new()$fromList(CrsList[['properties']])
          } else {
              self[['properties']] <- typeObject$fromList(CrsList[['properties']])
          }
      }
      return(self)
    },

    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(CrsJson, typeObject=NULL) {
      CrsList <- jsonlite::fromJSON(CrsJson, simplifyVector=F)
      self[['type']] <- CrsList[['type']]
      if (is.null(typeObject)) {
          self[['properties']] <- Specimen$new()$fromJSONString(jsonlite::toJSON(CrsList[['properties']], auto_unbox = TRUE), typeObject=typeObject) 
      } else {
          self[['properties']] <- typeObject$fromJSONString(jsonlite::toJSON(CrsList[['properties']], auto_unbox = TRUE), typeObject=typeObject)
      }
      invisible(self)
    }
  )
)
