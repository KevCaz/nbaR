# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' AssociatedTaxon Class
#'
#' @field name 
#' @field relationType 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AssociatedTaxon <- R6::R6Class(
  'AssociatedTaxon',
  public = list(
    `name` = NULL,
    `relationType` = NULL,
    initialize = function(`name`, `relationType`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self[['name']] <- `name`
      }
      if (!missing(`relationType`)) {
        stopifnot(is.character(`relationType`), length(`relationType`) == 1)
        self[['relationType']] <- `relationType`
      }
    },

    toList = function() {
      AssociatedTaxonList <- list()
        if (!is.null(self[['name']])) {
        AssociatedTaxonList[['name']] <- self[['name']]
      }
        if (!is.null(self[['relationType']])) {
        AssociatedTaxonList[['relationType']] <- self[['relationType']]
      }
      ## omit empty nested lists in returned list
      AssociatedTaxonList[sapply(AssociatedTaxonList, length) > 0]
      },

    fromList = function(AssociatedTaxonList, typeMapping=NULL) {
      if (is.null(typeMapping[['name']])) {
          self[['name']] <- AssociatedTaxonList[['name']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['name']], "$new()")))
          self[['name']] <- obj$fromList(AssociatedTaxonList[['name']], typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['relationType']])) {
          self[['relationType']] <- AssociatedTaxonList[['relationType']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['relationType']], "$new()")))
          self[['relationType']] <- obj$fromList(AssociatedTaxonList[['relationType']], typeMapping=typeMapping)
      }
      invisible(self)
    },
    
    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(AssociatedTaxonJson, typeMapping=NULL) {
      AssociatedTaxonList <- jsonlite::fromJSON(AssociatedTaxonJson, simplifyVector=F)
      if (is.null(typeMapping[['name']])) {
          self[['name']] <- AssociatedTaxonList[['name']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['name']], "$new()")))
          self[['name']] <- obj$fromJSONString(jsonlite::toJSON(AssociatedTaxonList[['name']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[['relationType']])) {
          self[['relationType']] <- AssociatedTaxonList[['relationType']]
      } else {
          obj <- eval(parse(text=paste0(typeMapping[['relationType']], "$new()")))
          self[['relationType']] <- obj$fromJSONString(jsonlite::toJSON(AssociatedTaxonList[['relationType']], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      invisible(self)
    }
  )
)
