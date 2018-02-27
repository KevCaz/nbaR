# Netherlands Biodiversity Api
# 
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
# 
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DefaultClassification Class
#'
#' @field kingdom 
#' @field phylum 
#' @field className 
#' @field order 
#' @field superFamily 
#' @field family 
#' @field genus 
#' @field subgenus 
#' @field specificEpithet 
#' @field infraspecificEpithet 
#' @field infraspecificRank 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DefaultClassification <- R6::R6Class(
  'DefaultClassification',
  public = list(
    `kingdom` = NULL,
    `phylum` = NULL,
    `className` = NULL,
    `order` = NULL,
    `superFamily` = NULL,
    `family` = NULL,
    `genus` = NULL,
    `subgenus` = NULL,
    `specificEpithet` = NULL,
    `infraspecificEpithet` = NULL,
    `infraspecificRank` = NULL,
    initialize = function(`kingdom`, `phylum`, `className`, `order`, `superFamily`, `family`, `genus`, `subgenus`, `specificEpithet`, `infraspecificEpithet`, `infraspecificRank`){
      if (!missing(`kingdom`)) {
        stopifnot(is.character(`kingdom`), length(`kingdom`) == 1)
        self$`kingdom` <- `kingdom`
      }
      if (!missing(`phylum`)) {
        stopifnot(is.character(`phylum`), length(`phylum`) == 1)
        self$`phylum` <- `phylum`
      }
      if (!missing(`className`)) {
        stopifnot(is.character(`className`), length(`className`) == 1)
        self$`className` <- `className`
      }
      if (!missing(`order`)) {
        stopifnot(is.character(`order`), length(`order`) == 1)
        self$`order` <- `order`
      }
      if (!missing(`superFamily`)) {
        stopifnot(is.character(`superFamily`), length(`superFamily`) == 1)
        self$`superFamily` <- `superFamily`
      }
      if (!missing(`family`)) {
        stopifnot(is.character(`family`), length(`family`) == 1)
        self$`family` <- `family`
      }
      if (!missing(`genus`)) {
        stopifnot(is.character(`genus`), length(`genus`) == 1)
        self$`genus` <- `genus`
      }
      if (!missing(`subgenus`)) {
        stopifnot(is.character(`subgenus`), length(`subgenus`) == 1)
        self$`subgenus` <- `subgenus`
      }
      if (!missing(`specificEpithet`)) {
        stopifnot(is.character(`specificEpithet`), length(`specificEpithet`) == 1)
        self$`specificEpithet` <- `specificEpithet`
      }
      if (!missing(`infraspecificEpithet`)) {
        stopifnot(is.character(`infraspecificEpithet`), length(`infraspecificEpithet`) == 1)
        self$`infraspecificEpithet` <- `infraspecificEpithet`
      }
      if (!missing(`infraspecificRank`)) {
        stopifnot(is.character(`infraspecificRank`), length(`infraspecificRank`) == 1)
        self$`infraspecificRank` <- `infraspecificRank`
      }
    },
    toJSON = function() {
      DefaultClassificationObject <- list()
      if (!is.null(self$`kingdom`)) {
        DefaultClassificationObject[['kingdom']] <- self$`kingdom`
      }
      if (!is.null(self$`phylum`)) {
        DefaultClassificationObject[['phylum']] <- self$`phylum`
      }
      if (!is.null(self$`className`)) {
        DefaultClassificationObject[['className']] <- self$`className`
      }
      if (!is.null(self$`order`)) {
        DefaultClassificationObject[['order']] <- self$`order`
      }
      if (!is.null(self$`superFamily`)) {
        DefaultClassificationObject[['superFamily']] <- self$`superFamily`
      }
      if (!is.null(self$`family`)) {
        DefaultClassificationObject[['family']] <- self$`family`
      }
      if (!is.null(self$`genus`)) {
        DefaultClassificationObject[['genus']] <- self$`genus`
      }
      if (!is.null(self$`subgenus`)) {
        DefaultClassificationObject[['subgenus']] <- self$`subgenus`
      }
      if (!is.null(self$`specificEpithet`)) {
        DefaultClassificationObject[['specificEpithet']] <- self$`specificEpithet`
      }
      if (!is.null(self$`infraspecificEpithet`)) {
        DefaultClassificationObject[['infraspecificEpithet']] <- self$`infraspecificEpithet`
      }
      if (!is.null(self$`infraspecificRank`)) {
        DefaultClassificationObject[['infraspecificRank']] <- self$`infraspecificRank`
      }

      DefaultClassificationObject
    },
    fromJSON = function(DefaultClassificationJson) {
      DefaultClassificationObject <- jsonlite::fromJSON(DefaultClassificationJson)
      if (!is.null(DefaultClassificationObject$`kingdom`)) {
        self$`kingdom` <- DefaultClassificationObject$`kingdom`
      }
      if (!is.null(DefaultClassificationObject$`phylum`)) {
        self$`phylum` <- DefaultClassificationObject$`phylum`
      }
      if (!is.null(DefaultClassificationObject$`className`)) {
        self$`className` <- DefaultClassificationObject$`className`
      }
      if (!is.null(DefaultClassificationObject$`order`)) {
        self$`order` <- DefaultClassificationObject$`order`
      }
      if (!is.null(DefaultClassificationObject$`superFamily`)) {
        self$`superFamily` <- DefaultClassificationObject$`superFamily`
      }
      if (!is.null(DefaultClassificationObject$`family`)) {
        self$`family` <- DefaultClassificationObject$`family`
      }
      if (!is.null(DefaultClassificationObject$`genus`)) {
        self$`genus` <- DefaultClassificationObject$`genus`
      }
      if (!is.null(DefaultClassificationObject$`subgenus`)) {
        self$`subgenus` <- DefaultClassificationObject$`subgenus`
      }
      if (!is.null(DefaultClassificationObject$`specificEpithet`)) {
        self$`specificEpithet` <- DefaultClassificationObject$`specificEpithet`
      }
      if (!is.null(DefaultClassificationObject$`infraspecificEpithet`)) {
        self$`infraspecificEpithet` <- DefaultClassificationObject$`infraspecificEpithet`
      }
      if (!is.null(DefaultClassificationObject$`infraspecificRank`)) {
        self$`infraspecificRank` <- DefaultClassificationObject$`infraspecificRank`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "kingdom": %s,
           "phylum": %s,
           "className": %s,
           "order": %s,
           "superFamily": %s,
           "family": %s,
           "genus": %s,
           "subgenus": %s,
           "specificEpithet": %s,
           "infraspecificEpithet": %s,
           "infraspecificRank": %s
        }',
        self$`kingdom`,
        self$`phylum`,
        self$`className`,
        self$`order`,
        self$`superFamily`,
        self$`family`,
        self$`genus`,
        self$`subgenus`,
        self$`specificEpithet`,
        self$`infraspecificEpithet`,
        self$`infraspecificRank`
      )
    },
    fromJSONString = function(DefaultClassificationJson) {
      DefaultClassificationObject <- jsonlite::fromJSON(DefaultClassificationJson)
      self$`kingdom` <- DefaultClassificationObject$`kingdom`
      self$`phylum` <- DefaultClassificationObject$`phylum`
      self$`className` <- DefaultClassificationObject$`className`
      self$`order` <- DefaultClassificationObject$`order`
      self$`superFamily` <- DefaultClassificationObject$`superFamily`
      self$`family` <- DefaultClassificationObject$`family`
      self$`genus` <- DefaultClassificationObject$`genus`
      self$`subgenus` <- DefaultClassificationObject$`subgenus`
      self$`specificEpithet` <- DefaultClassificationObject$`specificEpithet`
      self$`infraspecificEpithet` <- DefaultClassificationObject$`infraspecificEpithet`
      self$`infraspecificRank` <- DefaultClassificationObject$`infraspecificRank`
    }
  )
)