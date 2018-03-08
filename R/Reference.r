# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Reference Class
#'
#' @field titleCitation 
#' @field citationDetail 
#' @field uri 
#' @field author 
#' @field publicationDate 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Reference <- R6::R6Class(
  'Reference',
  public = list(
    `titleCitation` = NULL,
    `citationDetail` = NULL,
    `uri` = NULL,
    `author` = NULL,
    `publicationDate` = NULL,
    initialize = function(`titleCitation`, `citationDetail`, `uri`, `author`, `publicationDate`){
      if (!missing(`titleCitation`)) {
        stopifnot(is.character(`titleCitation`), length(`titleCitation`) == 1)
        self[['titleCitation']] <- `titleCitation`
      }
      if (!missing(`citationDetail`)) {
        stopifnot(is.character(`citationDetail`), length(`citationDetail`) == 1)
        self[['citationDetail']] <- `citationDetail`
      }
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self[['uri']] <- `uri`
      }
      if (!missing(`author`)) {
        stopifnot(R6::is.R6(`author`))
        self[['author']] <- `author`
      }
      if (!missing(`publicationDate`)) {
        stopifnot(is.character(`publicationDate`), length(`publicationDate`) == 1)
        self[['publicationDate']] <- `publicationDate`
      }
    },

    toList = function() {
      ReferenceList <- list()
        if (!is.null(self[['titleCitation']])) {
        ReferenceList[['titleCitation']] <- self[['titleCitation']]
      }
        if (!is.null(self[['citationDetail']])) {
        ReferenceList[['citationDetail']] <- self[['citationDetail']]
      }
        if (!is.null(self[['uri']])) {
        ReferenceList[['uri']] <- self[['uri']]
      }
        if (!is.null(self[['author']])) {
        ReferenceList[['author']] <- self[['author']]$toList()
      }
        if (!is.null(self[['publicationDate']])) {
        ReferenceList[['publicationDate']] <- self[['publicationDate']]
      }
      ## omit empty nested lists in returned list
      ReferenceList[sapply(ReferenceList, length) > 0]
      },

    fromList = function(ReferenceList) {
      if (!is.null(ReferenceList[['titleCitation']])) {      
          self[['titleCitation']] <- ReferenceList[['titleCitation']]
      }
      if (!is.null(ReferenceList[['citationDetail']])) {      
          self[['citationDetail']] <- ReferenceList[['citationDetail']]
      }
      if (!is.null(ReferenceList[['uri']])) {      
          self[['uri']] <- ReferenceList[['uri']]
      }
      if (!is.null(ReferenceList[['author']])) {      
          self[['author']] <- Person$new()$fromList(ReferenceList[['author']])
      }
      if (!is.null(ReferenceList[['publicationDate']])) {      
          self[['publicationDate']] <- ReferenceList[['publicationDate']]
      }
      return(self)
    },

    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(ReferenceJson) {
      ReferenceObject <- jsonlite::fromJSON(ReferenceJson, simplifyVector=F)
      self[['titleCitation']] <- ReferenceObject[['titleCitation']]
      self[['citationDetail']] <- ReferenceObject[['citationDetail']]
      self[['uri']] <- ReferenceObject[['uri']]
      PersonObject <- Person$new()
      self[['author']] <- PersonObject$fromJSONString(jsonlite::toJSON(ReferenceObject[['author']], auto_unbox = TRUE))
      self[['publicationDate']] <- ReferenceObject[['publicationDate']]
      invisible(self)
    }
  )
)
