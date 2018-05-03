# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FeatureCollection Class
#'
#' @field crs 
#' @field bbox 
#' @field features 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FeatureCollection <- R6::R6Class(
  'FeatureCollection',
  public = list(
    `crs` = NULL,
    `bbox` = NULL,
    `features` = NULL,
    initialize = function(`crs`, `bbox`, `features`){
      if (!missing(`crs`)) {
        stopifnot(R6::is.R6(`crs`))
        self[['crs']] <- `crs`
      }
      if (!missing(`bbox`)) {
        stopifnot(is.list(`bbox`), length(`bbox`) != 0)
        lapply(`bbox`, function(x) stopifnot(is.character(x)))
        self[['bbox']] <- `bbox`
      }
      if (!missing(`features`)) {
        stopifnot(is.list(`features`), length(`features`) != 0)
        lapply(`features`, function(x) stopifnot(R6::is.R6(x)))
        self[['features']] <- `features`
      }
    },

    toList = function() {
      FeatureCollectionList <- list()
        if (!is.null(self[['crs']])) {
        FeatureCollectionList[['crs']] <- self[['crs']]$toList()
      }
        if (!is.null(self[['bbox']])) {
        FeatureCollectionList[['bbox']] <- self[['bbox']]
      }
        if (!is.null(self[['features']])) {
        FeatureCollectionList[['features']] <- lapply(self[['features']], function(x) x$toList())
      }
      ## omit empty nested lists in returned list
      FeatureCollectionList[sapply(FeatureCollectionList, length) > 0]
      },

    fromList = function(FeatureCollectionList, typeObject=NULL) {
      if (!is.null(FeatureCollectionList[['crs']])) {      
          if (is.null(typeObject)) {
              self[['crs']] <- Crs$new()$fromList(FeatureCollectionList[['crs']])
          } else {
              self[['crs']] <- typeObject$fromList(FeatureCollectionList[['crs']])
          }
      }
      if (!is.null(FeatureCollectionList[['bbox']])) {      
          self[['bbox']] <- FeatureCollectionList[['bbox']]
      }
      if (!is.null(FeatureCollectionList[['features']])) {      
          self[['features']] <- lapply(FeatureCollectionList[['features']], function(x) {
             Feature$new()$fromList(x, typeObject=typeObject)            
          })
      }
      return(self)
    },

    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(FeatureCollectionJson, typeObject=NULL) {
      FeatureCollectionList <- jsonlite::fromJSON(FeatureCollectionJson, simplifyVector=F)
      if (is.null(typeObject)) {
          self[['crs']] <- Crs$new()$fromJSONString(jsonlite::toJSON(FeatureCollectionList[['crs']], auto_unbox = TRUE), typeObject=typeObject) 
      } else {
          self[['crs']] <- typeObject$fromJSONString(jsonlite::toJSON(FeatureCollectionList[['crs']], auto_unbox = TRUE), typeObject=typeObject)
      }
      self[['bbox']] <- FeatureCollectionList[['bbox']]
      self[['features']] <- lapply(FeatureCollectionList[['features']],
                                        function(x) Feature$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE), typeObject=typeObject))
      invisible(self)
    }
  )
)
