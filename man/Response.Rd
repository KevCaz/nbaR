% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Response.r
\name{Response}
\alias{Response}
\title{Response Class}
\description{
The Response object is a generic object returned by any query
function of one of the nbaR client classes.
}
\details{
Response Class

This class contains two fields (see also section 'Fields' below):
The field \code{content} contains the query result parsed from
the JSON response of the request. Depending on the query, this
can be an object such as e.g. a \code{ResultSet}, or a \code{Specimen} or
\code{Taxon} or a primitive data type. The field \code{reponse}
is the actual response from the \code{httr} package that is used
to perform the http request. It contains information such as the request and response headers,
status code, URL, and the raw response.
}
\seealso{
https://cran.r-project.org/web/packages/httr/vignettes/quickstart.html for further details.
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{content}}{Parsed response of the query call}

\item{\code{response}}{Response object from package \code{httr}}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Response-new}{\code{Response$new()}}
\item \href{#method-Response-print}{\code{Response$print()}}
\item \href{#method-Response-clone}{\code{Response$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Response-new"></a>}}
\if{latex}{\out{\hypertarget{method-Response-new}{}}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Response$new(content, response)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Response-print"></a>}}
\if{latex}{\out{\hypertarget{method-Response-print}{}}}
\subsection{Method \code{print()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Response$print(...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Response-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Response-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Response$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
