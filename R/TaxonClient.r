# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Taxon operations
#' @description nbaR.Taxon
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' count_http_get3 Get the number of taxa matching a condition
#'
#'
#' count_http_post_json3 Get the number of taxa matching a condition
#'
#'
#' dwca_get_data_set Download dataset as Darwin Core Archive File
#'
#'
#' dwca_get_data_set_names Retrieve the names of all available datasets
#'
#'
#' dwca_query_http_get Dynamic download service: Query for taxa and return result as Darwin Core Archive File
#'
#'
#' dwca_query_http_post_json Dynamic download service: Query for taxa and return result as Darwin Core Archive File
#'
#'
#' find4 Find a taxon by id
#'
#'
#' find_by_ids4 Find taxa by ids
#'
#'
#' get_distinct_values_http_get3 Get all different values that can be found for one field
#'
#'
#' get_distinct_values_http_post_json3 Get all different values that exist for a field
#'
#'
#' get_field_info3 Returns extended information for each field of a specimen document
#'
#'
#' get_paths3 Returns the full path of all fields within a document
#'
#'
#' get_settings6 Get the value of an NBA setting
#'
#'
#' get_settings7 List all publicly available configuration settings for the NBA
#'
#'
#' group_by_scientific_name_http_get Aggregates Taxon and Specimen documents according to their scientific names
#'
#'
#' group_by_scientific_name_http_post_json Aggregates Taxon and Specimen documents according to their scientific names
#'
#'
#' is_operator_allowed3 Checks if a given operator is allowed for a given field
#'
#'
#' query_http_get3 Query for taxa
#'
#'
#' query_http_post_json3 Query for taxa
#'
#' }
#'
#' @export
TaxonClient <- R6::R6Class(
  'TaxonClient',
  public = list(
    userAgent = "Swagger-Codegen/0.0.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },

      # '@name count_http_get3
      # '@title Get the number of taxa matching a condition
      # '@description Conditions given as query parameters or a querySpec JSON
      # '@return \code{ integer }
      # '@param source_system_code: character; Example query param
      count_http_get3 = function(source_system_code, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`source_system_code`)) {
        param <- ifelse(typeof(`source_system_code`) == "environment", `source_system_code`$toJSONString(), `source_system_code`)    
        queryParams['sourceSystem.code'] <- param
      }

      urlPath <- "/taxon/count"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- integer$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name count_http_post_json3
      # '@title Get the number of taxa matching a condition
      # '@description Conditions given as query parameters or a querySpec JSON
      # '@return \code{ integer }
      count_http_post_json3 = function(body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/taxon/count"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- integer$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name dwca_get_data_set
      # '@title Download dataset as Darwin Core Archive File
      # '@description Available datasets can be queried with /taxon/dwca/getDataSetNames. Response saved to &lt;datasetname&gt;-&lt;yyyymmdd&gt;.dwca.zip
      # '@return \code{  }
      dwca_get_data_set = function(dataset, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/taxon/dwca/getDataSet/{dataset}"
      if (!missing(`dataset`)) {
        urlPath <- gsub(paste0("\\{", "dataset", "\\}"), `dataset`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name dwca_get_data_set_names
      # '@title Retrieve the names of all available datasets
      # '@description Individual datasets can then be downloaded with /dwca/getDataSet/{dataset}
      # '@return \code{ character }
      dwca_get_data_set_names = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/taxon/dwca/getDataSetNames"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- character$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name dwca_query_http_get
      # '@title Dynamic download service: Query for taxa and return result as Darwin Core Archive File
      # '@description Query with query parameters or querySpec JSON. Response saved to nba-taxa.dwca.zip
      # '@return \code{  }
      # '@param source_system_code: character; Example query param
      dwca_query_http_get = function(source_system_code, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`source_system_code`)) {
        param <- ifelse(typeof(`source_system_code`) == "environment", `source_system_code`$toJSONString(), `source_system_code`)    
        queryParams['sourceSystem.code'] <- param
      }

      urlPath <- "/taxon/dwca/query"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name dwca_query_http_post_json
      # '@title Dynamic download service: Query for taxa and return result as Darwin Core Archive File
      # '@description Query with query parameters or querySpec JSON. Response saved to nba-taxa.dwca.zip
      # '@return \code{  }
      # '@param source_system_code: character; Example query param
      dwca_query_http_post_json = function(body, source_system_code, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`source_system_code`)) {
        param <- ifelse(typeof(`source_system_code`) == "environment", `source_system_code`$toJSONString(), `source_system_code`)    
        queryParams['sourceSystem.code'] <- param
      }

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/taxon/dwca/query"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name find4
      # '@title Find a taxon by id
      # '@description If found, returns a single taxon
      # '@return \code{ Taxon }
      find4 = function(id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/taxon/find/{id}"
      if (!missing(`id`)) {
        urlPath <- gsub(paste0("\\{", "id", "\\}"), `id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Taxon$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name find_by_ids4
      # '@title Find taxa by ids
      # '@description Given multiple ids, returns a list of taxa
      # '@return \code{ Taxon }
      find_by_ids4 = function(ids, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/taxon/findByIds/{ids}"
      if (!missing(`ids`)) {
        urlPath <- gsub(paste0("\\{", "ids", "\\}"), `ids`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Taxon$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name get_distinct_values_http_get3
      # '@title Get all different values that can be found for one field
      # '@description A list of all fields for taxon documents can be retrieved with /metadata/getFieldInfo
      # '@return \code{ Specimen }
      get_distinct_values_http_get3 = function(field, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/taxon/getDistinctValues/{field}"
      if (!missing(`field`)) {
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Specimen$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name get_distinct_values_http_post_json3
      # '@title Get all different values that exist for a field
      # '@description A list of all fields for taxon documents can be retrieved with /metadata/getFieldInfo
      # '@return \code{ Specimen }
      get_distinct_values_http_post_json3 = function(field, body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/taxon/getDistinctValues/{field}"
      if (!missing(`field`)) {
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Specimen$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name get_field_info3
      # '@title Returns extended information for each field of a specimen document
      # '@description Info consists of whether the fields is indexed, the ElasticSearch datatype and a list of allowed operators
      # '@return \code{ Specimen }
      get_field_info3 = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/taxon/metadata/getFieldInfo"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Specimen$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name get_paths3
      # '@title Returns the full path of all fields within a document
      # '@description See also metadata/getFieldInfo for all allowed operators per field
      # '@return \code{ character }
      get_paths3 = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/taxon/metadata/getPaths"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- character$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name get_settings6
      # '@title Get the value of an NBA setting
      # '@description All settings can be queried with /metadata/getSettings
      # '@return \code{ Specimen }
      get_settings6 = function(name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/taxon/metadata/getSetting/{name}"
      if (!missing(`name`)) {
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Specimen$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name get_settings7
      # '@title List all publicly available configuration settings for the NBA
      # '@description The value of a specific setting can be queried with metadata/getSetting/{name}
      # '@return \code{ Specimen }
      get_settings7 = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/taxon/metadata/getSettings"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Specimen$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name group_by_scientific_name_http_get
      # '@title Aggregates Taxon and Specimen documents according to their scientific names
      # '@description Returns a list with ScientificNameGroups, which contain Taxon and Specimen documents that share a scientific name
      # '@return \code{ QueryResult }
      # '@param default_classification_family: character; Example query param
      group_by_scientific_name_http_get = function(default_classification_family, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`default_classification_family`)) {
        param <- ifelse(typeof(`default_classification_family`) == "environment", `default_classification_family`$toJSONString(), `default_classification_family`)    
        queryParams['defaultClassification.family'] <- param
      }

      urlPath <- "/taxon/groupByScientificName"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- QueryResult$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name group_by_scientific_name_http_post_json
      # '@title Aggregates Taxon and Specimen documents according to their scientific names
      # '@description Returns a list with ScientificNameGroups, which contain Taxon and Specimen documents that share a scientific name
      # '@return \code{ QueryResult }
      group_by_scientific_name_http_post_json = function(body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/taxon/groupByScientificName"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- QueryResult$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name is_operator_allowed3
      # '@title Checks if a given operator is allowed for a given field
      # '@description See also metadata/getFieldInfo
      # '@return \code{ Specimen }
      is_operator_allowed3 = function(field, operator, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/taxon/metadata/isOperatorAllowed/{field}/{operator}"
      if (!missing(`field`)) {
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      if (!missing(`operator`)) {
        urlPath <- gsub(paste0("\\{", "operator", "\\}"), `operator`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Specimen$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name query_http_get3
      # '@title Query for taxa
      # '@description Search for taxa (GET) using query parameters or a querySpec JSON
      # '@return \code{ QueryResult }
      # '@param default_classification_genus: character; Example query param
      query_http_get3 = function(default_classification_genus, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`default_classification_genus`)) {
        param <- ifelse(typeof(`default_classification_genus`) == "environment", `default_classification_genus`$toJSONString(), `default_classification_genus`)    
        queryParams['defaultClassification.genus'] <- param
      }

      urlPath <- "/taxon/query"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- QueryResult$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name query_http_post_json3
      # '@title Query for taxa
      # '@description Search for taxa (POST) using query parameters or a querySpec JSON
      # '@return \code{ QueryResult }
      query_http_post_json3 = function(body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/taxon/query"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- QueryResult$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
)

