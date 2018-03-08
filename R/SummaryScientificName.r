# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SummaryScientificName Class
#'
#' @field fullScientificName 
#' @field taxonomicStatus 
#' @field genusOrMonomial 
#' @field subgenus 
#' @field specificEpithet 
#' @field infraspecificEpithet 
#' @field authorshipVerbatim 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SummaryScientificName <- R6::R6Class(
  'SummaryScientificName',
  public = list(
    `fullScientificName` = NULL,
    `taxonomicStatus` = NULL,
    `genusOrMonomial` = NULL,
    `subgenus` = NULL,
    `specificEpithet` = NULL,
    `infraspecificEpithet` = NULL,
    `authorshipVerbatim` = NULL,
    initialize = function(`fullScientificName`, `taxonomicStatus`, `genusOrMonomial`, `subgenus`, `specificEpithet`, `infraspecificEpithet`, `authorshipVerbatim`){
      if (!missing(`fullScientificName`)) {
        stopifnot(is.character(`fullScientificName`), length(`fullScientificName`) == 1)
        self[['fullScientificName']] <- `fullScientificName`
      }
      if (!missing(`taxonomicStatus`)) {
        stopifnot(is.character(`taxonomicStatus`), length(`taxonomicStatus`) == 1)
        self[['taxonomicStatus']] <- `taxonomicStatus`
      }
      if (!missing(`genusOrMonomial`)) {
        stopifnot(is.character(`genusOrMonomial`), length(`genusOrMonomial`) == 1)
        self[['genusOrMonomial']] <- `genusOrMonomial`
      }
      if (!missing(`subgenus`)) {
        stopifnot(is.character(`subgenus`), length(`subgenus`) == 1)
        self[['subgenus']] <- `subgenus`
      }
      if (!missing(`specificEpithet`)) {
        stopifnot(is.character(`specificEpithet`), length(`specificEpithet`) == 1)
        self[['specificEpithet']] <- `specificEpithet`
      }
      if (!missing(`infraspecificEpithet`)) {
        stopifnot(is.character(`infraspecificEpithet`), length(`infraspecificEpithet`) == 1)
        self[['infraspecificEpithet']] <- `infraspecificEpithet`
      }
      if (!missing(`authorshipVerbatim`)) {
        stopifnot(is.character(`authorshipVerbatim`), length(`authorshipVerbatim`) == 1)
        self[['authorshipVerbatim']] <- `authorshipVerbatim`
      }
    },

    toList = function() {
      SummaryScientificNameList <- list()
        if (!is.null(self[['fullScientificName']])) {
        SummaryScientificNameList[['fullScientificName']] <- self[['fullScientificName']]
      }
        if (!is.null(self[['taxonomicStatus']])) {
        SummaryScientificNameList[['taxonomicStatus']] <- self[['taxonomicStatus']]
      }
        if (!is.null(self[['genusOrMonomial']])) {
        SummaryScientificNameList[['genusOrMonomial']] <- self[['genusOrMonomial']]
      }
        if (!is.null(self[['subgenus']])) {
        SummaryScientificNameList[['subgenus']] <- self[['subgenus']]
      }
        if (!is.null(self[['specificEpithet']])) {
        SummaryScientificNameList[['specificEpithet']] <- self[['specificEpithet']]
      }
        if (!is.null(self[['infraspecificEpithet']])) {
        SummaryScientificNameList[['infraspecificEpithet']] <- self[['infraspecificEpithet']]
      }
        if (!is.null(self[['authorshipVerbatim']])) {
        SummaryScientificNameList[['authorshipVerbatim']] <- self[['authorshipVerbatim']]
      }
      ## omit empty nested lists in returned list
      SummaryScientificNameList[sapply(SummaryScientificNameList, length) > 0]
      },

    fromList = function(SummaryScientificNameList) {
      if (!is.null(SummaryScientificNameList[['fullScientificName']])) {      
          self[['fullScientificName']] <- SummaryScientificNameList[['fullScientificName']]
      }
      if (!is.null(SummaryScientificNameList[['taxonomicStatus']])) {      
          self[['taxonomicStatus']] <- SummaryScientificNameList[['taxonomicStatus']]
      }
      if (!is.null(SummaryScientificNameList[['genusOrMonomial']])) {      
          self[['genusOrMonomial']] <- SummaryScientificNameList[['genusOrMonomial']]
      }
      if (!is.null(SummaryScientificNameList[['subgenus']])) {      
          self[['subgenus']] <- SummaryScientificNameList[['subgenus']]
      }
      if (!is.null(SummaryScientificNameList[['specificEpithet']])) {      
          self[['specificEpithet']] <- SummaryScientificNameList[['specificEpithet']]
      }
      if (!is.null(SummaryScientificNameList[['infraspecificEpithet']])) {      
          self[['infraspecificEpithet']] <- SummaryScientificNameList[['infraspecificEpithet']]
      }
      if (!is.null(SummaryScientificNameList[['authorshipVerbatim']])) {      
          self[['authorshipVerbatim']] <- SummaryScientificNameList[['authorshipVerbatim']]
      }
      return(self)
    },

    toJSONString = function(pretty=T) {
      jsonlite::toJSON(self$toList(), simplifyVector=T, auto_unbox=T, pretty=pretty)
    },

    fromJSONString = function(SummaryScientificNameJson) {
      SummaryScientificNameObject <- jsonlite::fromJSON(SummaryScientificNameJson, simplifyVector=F)
      self[['fullScientificName']] <- SummaryScientificNameObject[['fullScientificName']]
      self[['taxonomicStatus']] <- SummaryScientificNameObject[['taxonomicStatus']]
      self[['genusOrMonomial']] <- SummaryScientificNameObject[['genusOrMonomial']]
      self[['subgenus']] <- SummaryScientificNameObject[['subgenus']]
      self[['specificEpithet']] <- SummaryScientificNameObject[['specificEpithet']]
      self[['infraspecificEpithet']] <- SummaryScientificNameObject[['infraspecificEpithet']]
      self[['authorshipVerbatim']] <- SummaryScientificNameObject[['authorshipVerbatim']]
      invisible(self)
    }
  )
)
