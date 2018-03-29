# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Specimen operations
#' @description nbaR.Specimen
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
#' count_http_get2 Get the number of specimens matching a condition
#'
#'
#' count_http_post_json2 Get the number of specimens matching a condition
#'
#'
#' dwca_get_data_set Download dataset as Darwin Core Archive File
#'
#'
#' dwca_get_data_set_names Retrieve the names of all available datasets
#'
#'
#' dwca_query_http_get Dynamic download service: Query for specimens and return result as Darwin Core Archive File
#'
#'
#' dwca_query_http_post_json Dynamic download service: Query for specimens and return result as Darwin Core Archive File
#'
#'
#' exists Returns whether or not a unitID for a specimen exists
#'
#'
#' find3 Find a specimen by id
#'
#'
#' find_by_ids3 Find specimens by ids
#'
#'
#' find_by_unit_id Find a specimen by unitID
#'
#'
#' get_distinct_values_http_get2 Get all different values that exist for a field
#'
#'
#' get_distinct_values_http_post_json2 Get all different values that exist for a field
#'
#'
#' get_field_info2 Returns extended information for each field of a specimen document
#'
#'
#' get_ids_in_collection Retrieve all ids within a &#39;special collection&#39; of specimens
#'
#'
#' get_named_collections Retrieve the names of all &#39;special collections&#39; of specimens
#'
#'
#' get_paths2 Returns the full path of all fields within a document
#'
#'
#' get_settings4 Get the value of an NBA setting
#'
#'
#' get_settings5 List all publicly available configuration settings for the NBA
#'
#'
#' group_by_scientific_name_http_get Aggregates Taxon and Specimen documents according to their scientific names
#'
#'
#' group_by_scientific_name_http_post_json Aggregates Taxon and Specimen documents according to their scientific names
#'
#'
#' is_operator_allowed2 Checks if a given operator is allowed for a given field
#'
#'
#' query_http_get2 Query for specimens
#'
#'
#' query_http_post_json2 Query for specimens
#'
#' }
#'
#' @export
SpecimenClient <- R6::R6Class(
  'SpecimenClient',
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

      # '@name count_http_get2
      # '@title Get the number of specimens matching a condition
      # '@description Conditions given as query parameters or a querySpec JSON
      # '@return \code{ integer }
      # '@param collection_type: character; Example query param
      count_http_get2 = function(collection_type, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`collection_type`)) {
        param <- ifelse(typeof(`collection_type`) == "environment", `collection_type`$toJSONString(), `collection_type`)    
        queryParams['collectionType'] <- param
      }

      urlPath <- "/specimen/count"
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
      # '@name count_http_post_json2
      # '@title Get the number of specimens matching a condition
      # '@description Conditions given as query parameters or a querySpec JSON
      # '@return \code{ integer }
      count_http_post_json2 = function(body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/specimen/count"
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
      # '@description Available datasets can be queried with /specimen/dwca/getDataSetNames. Response saved to &lt;datasetname&gt;-&lt;yyyymmdd&gt;.dwca.zip
      # '@return \code{  }
      dwca_get_data_set = function(dataset, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/specimen/dwca/getDataSet/{dataset}"
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

      urlPath <- "/specimen/dwca/getDataSetNames"
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
      # '@title Dynamic download service: Query for specimens and return result as Darwin Core Archive File
      # '@description Query with query parameters or querySpec JSON. Response saved to nba-specimens.dwca.zip
      # '@return \code{  }
      # '@param collection_type: character; Example query param
      dwca_query_http_get = function(collection_type, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`collection_type`)) {
        param <- ifelse(typeof(`collection_type`) == "environment", `collection_type`$toJSONString(), `collection_type`)    
        queryParams['collectionType'] <- param
      }

      urlPath <- "/specimen/dwca/query"
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
      # '@title Dynamic download service: Query for specimens and return result as Darwin Core Archive File
      # '@description Query with query parameters or querySpec JSON. Response saved to nba-specimens.dwca.zip
      # '@return \code{  }
      dwca_query_http_post_json = function(body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/specimen/dwca/query"
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
      # '@name exists
      # '@title Returns whether or not a unitID for a specimen exists
      # '@description Returns either true or false
      # '@return \code{ character }
      exists = function(unit_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/specimen/exists/{unitID}"
      if (!missing(`unit_id`)) {
        urlPath <- gsub(paste0("\\{", "unitID", "\\}"), `unit_id`, urlPath)
      }

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
      # '@name find3
      # '@title Find a specimen by id
      # '@description If found, returns a single specimen
      # '@return \code{ Specimen }
      find3 = function(id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/specimen/find/{id}"
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
        returnObject <- Specimen$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name find_by_ids3
      # '@title Find specimens by ids
      # '@description Given multiple ids, returns a list of specimen
      # '@return \code{ Specimen }
      find_by_ids3 = function(ids, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/specimen/findByIds/{ids}"
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
        returnObject <- Specimen$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name find_by_unit_id
      # '@title Find a specimen by unitID
      # '@description Get a specimen by its unitID. Returns a list of specimens since unitIDs are not strictly unique
      # '@return \code{ Specimen }
      find_by_unit_id = function(unit_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/specimen/findByUnitID/{unitID}"
      if (!missing(`unit_id`)) {
        urlPath <- gsub(paste0("\\{", "unitID", "\\}"), `unit_id`, urlPath)
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
      # '@name get_distinct_values_http_get2
      # '@title Get all different values that exist for a field
      # '@description A list of all fields for specimen documents can be retrieved with /metadata/getFieldInfo
      # '@return \code{ Specimen }
      get_distinct_values_http_get2 = function(field, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/specimen/getDistinctValues/{field}"
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
      # '@name get_distinct_values_http_post_json2
      # '@title Get all different values that exist for a field
      # '@description A list of all fields for specimen documents can be retrieved with /metadata/getFieldInfo
      # '@return \code{ Specimen }
      get_distinct_values_http_post_json2 = function(field, body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/specimen/getDistinctValues/{field}"
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
      # '@name get_field_info2
      # '@title Returns extended information for each field of a specimen document
      # '@description Info consists of whether the fields is indexed, the ElasticSearch datatype and a list of allowed operators
      # '@return \code{ Specimen }
      get_field_info2 = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/specimen/metadata/getFieldInfo"
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
      # '@name get_ids_in_collection
      # '@title Retrieve all ids within a &#39;special collection&#39; of specimens
      # '@description Available collections can be queried with /getNamedCollections
      # '@return \code{ character }
      get_ids_in_collection = function(name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/specimen/getIdsInCollection/{name}"
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
        returnObject <- character$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name get_named_collections
      # '@title Retrieve the names of all &#39;special collections&#39; of specimens
      # '@description 
      # '@return \code{ character }
      get_named_collections = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/specimen/getNamedCollections"
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
      # '@name get_paths2
      # '@title Returns the full path of all fields within a document
      # '@description See also metadata/getFieldInfo for all allowed operators per field
      # '@return \code{ character }
      get_paths2 = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/specimen/metadata/getPaths"
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
      # '@name get_settings4
      # '@title Get the value of an NBA setting
      # '@description All settings can be queried with /metadata/getSettings
      # '@return \code{ Specimen }
      get_settings4 = function(name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/specimen/metadata/getSetting/{name}"
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
      # '@name get_settings5
      # '@title List all publicly available configuration settings for the NBA
      # '@description The value of a specific setting can be queried with metadata/getSetting/{name}
      # '@return \code{ Specimen }
      get_settings5 = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/specimen/metadata/getSettings"
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
      # '@param collection_type: character; Example query param
      group_by_scientific_name_http_get = function(collection_type, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`collection_type`)) {
        param <- ifelse(typeof(`collection_type`) == "environment", `collection_type`$toJSONString(), `collection_type`)    
        queryParams['collectionType'] <- param
      }

      urlPath <- "/specimen/groupByScientificName"
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

      urlPath <- "/specimen/groupByScientificName"
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
      # '@name is_operator_allowed2
      # '@title Checks if a given operator is allowed for a given field
      # '@description See also metadata/getFieldInfo
      # '@return \code{ Specimen }
      is_operator_allowed2 = function(field, operator, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/specimen/metadata/isOperatorAllowed/{field}/{operator}"
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
      # '@name query_http_get2
      # '@title Query for specimens
      # '@description Search for specimens (GET) using query parameters or a querySpec JSON
      # '@return \code{ QueryResult }
      # '@param query_spec: ERRORUNKNOWN; Object of type QuerySpec or its JSON representation
      query_http_get2 = function(query_spec, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`query_spec`)) {
        param <- ifelse(typeof(`query_spec`) != "environment", `query_spec`$toJSONString(), `query_spec`)    
        queryParams['_querySpec'] <- param
      }

      urlPath <- "/specimen/query"
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
      # '@name query_http_post_json2
      # '@title Query for specimens
      # '@description Search for specimens (GET) using query parameters or a querySpec JSON
      # '@return \code{ QueryResult }
      query_http_post_json2 = function(body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/specimen/query"
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
