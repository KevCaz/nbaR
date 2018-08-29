# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' TaxonDescription Class
#'
#'
#'
#' @field category  character
#' @field description  character
#' @field language  character
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor TaxonDescription object.
#'
#' }
#' \item{\code{$fromList(TaxonDescriptionList)}}{
#'
#'   Create TaxonDescription object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of TaxonDescription.
#'
#' }
#' \item{\code{fromJSONString(TaxonDescriptionJson)}}{
#'
#'   Create TaxonDescription object from list.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of TaxonDescription.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TaxonDescription <- R6::R6Class(
  "TaxonDescription",
  public = list(
    `category` = NULL,
    `description` = NULL,
    `language` = NULL,
    initialize = function(
                              `category`,
                              `description`,
                              `language`) {
      if (!missing(`category`)) {
        stopifnot(
          is.character(`category`),
          length(`category`) == 1
        )
        self[["category"]] <- `category`
      }
      if (!missing(`description`)) {
        stopifnot(
          is.character(`description`),
          length(`description`) == 1
        )
        self[["description"]] <- `description`
      }
      if (!missing(`language`)) {
        stopifnot(
          is.character(`language`),
          length(`language`) == 1
        )
        self[["language"]] <- `language`
      }
    },
    toList = function() {
      TaxonDescriptionList <- list()
      if (!is.null(self[["category"]])) {
        TaxonDescriptionList[["category"]] <-
          self[["category"]]
      }
      if (!is.null(self[["description"]])) {
        TaxonDescriptionList[["description"]] <-
          self[["description"]]
      }
      if (!is.null(self[["language"]])) {
        TaxonDescriptionList[["language"]] <-
          self[["language"]]
      }
      ## omit empty nested lists in returned list
      TaxonDescriptionList[vapply(
        TaxonDescriptionList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(TaxonDescriptionList,
                            typeMapping = NULL) {
      self[["category"]] <-
        TaxonDescriptionList[["category"]]
      self[["description"]] <-
        TaxonDescriptionList[["description"]]
      self[["language"]] <-
        TaxonDescriptionList[["language"]]
      invisible(self)
    },
    toJSONString = function(pretty = TRUE) {
      jsonlite::toJSON(
        self$toList(),
        simplifyVector = TRUE,
        auto_unbox = TRUE,
        pretty = pretty
      )
    },
    fromJSONString = function(TaxonDescriptionJson,
                                  typeMapping = NULL) {
      TaxonDescriptionList <- jsonlite::fromJSON(
        TaxonDescriptionJson,
        simplifyVector = FALSE
      )
      self[["category"]] <-
        TaxonDescriptionList[["category"]]
      self[["description"]] <-
        TaxonDescriptionList[["description"]]
      self[["language"]] <-
        TaxonDescriptionList[["language"]]
      invisible(self)
    }
  )
)
