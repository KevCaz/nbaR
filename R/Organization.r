# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Organization Class
#'
#'
#'
#' @field agentText  character
#' @field name  character
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor Organization object.
#'
#' }
#' \item{\code{$fromList(OrganizationList)}}{
#'
#'   Create Organization object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of Organization.
#'
#' }
#' \item{\code{fromJSONString(OrganizationJson)}}{
#'
#'   Create Organization object from list.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of Organization.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Organization <- R6::R6Class(
  "Organization",
  public = list(
    `agentText` = NULL,
    `name` = NULL,
    initialize = function(
                              `agentText`,
                              `name`) {
      if (!missing(`agentText`)) {
        stopifnot(
          is.character(`agentText`),
          length(`agentText`) == 1
        )
        self[["agentText"]] <- `agentText`
      }
      if (!missing(`name`)) {
        stopifnot(
          is.character(`name`),
          length(`name`) == 1
        )
        self[["name"]] <- `name`
      }
    },
    toList = function() {
      OrganizationList <- list()
      if (!is.null(self[["agentText"]])) {
        OrganizationList[["agentText"]] <-
          self[["agentText"]]
      }
      if (!is.null(self[["name"]])) {
        OrganizationList[["name"]] <-
          self[["name"]]
      }
      ## omit empty nested lists in returned list
      OrganizationList[vapply(
        OrganizationList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(OrganizationList,
                            typeMapping = NULL) {
      self[["agentText"]] <-
        OrganizationList[["agentText"]]
      self[["name"]] <-
        OrganizationList[["name"]]
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
    fromJSONString = function(OrganizationJson,
                                  typeMapping = NULL) {
      OrganizationList <- jsonlite::fromJSON(
        OrganizationJson,
        simplifyVector = FALSE
      )
      self[["agentText"]] <-
        OrganizationList[["agentText"]]
      self[["name"]] <-
        OrganizationList[["name"]]
      invisible(self)
    }
  )
)
