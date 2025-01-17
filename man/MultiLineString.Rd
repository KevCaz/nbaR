% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MultiLineString.r
\docType{class}
\name{MultiLineString}
\alias{MultiLineString}
\title{MultiLineString Class}
\format{
R6 class

R6 class
}
\usage{
# MultiLineString$new()
}
\description{
For more information on the NBA object model, please refer to the
official NBA documentation at
\href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
the NBA model and endpoints reference at
\href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
}
\details{
Model class for MultiLineString objects.
}
\section{Methods}{

\describe{

\item{\code{$new()}}{

Constructor MultiLineString object.

}
\item{\code{$fromList(MultiLineStringList)}}{

Create MultiLineString object from list.

}

\item{\code{$toList()}}{

Get list representation of MultiLineString.

}
\item{\code{fromJSONString(MultiLineStringJson)}}{

Create MultiLineString object from JSON.

}
\item{\code{toJSONString(pretty=TRUE)}}{

Get JSON representation of MultiLineString.

}
}
}

\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{crs}}{Crs}

\item{\code{bbox}}{list(numeric)}

\item{\code{coordinates}}{list(LngLatAlt)}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-MultiLineString-new}{\code{MultiLineString$new()}}
\item \href{#method-MultiLineString-toList}{\code{MultiLineString$toList()}}
\item \href{#method-MultiLineString-fromList}{\code{MultiLineString$fromList()}}
\item \href{#method-MultiLineString-toJSONString}{\code{MultiLineString$toJSONString()}}
\item \href{#method-MultiLineString-fromJSONString}{\code{MultiLineString$fromJSONString()}}
\item \href{#method-MultiLineString-print}{\code{MultiLineString$print()}}
\item \href{#method-MultiLineString-clone}{\code{MultiLineString$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MultiLineString-new"></a>}}
\if{latex}{\out{\hypertarget{method-MultiLineString-new}{}}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MultiLineString$new(crs, bbox, coordinates)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MultiLineString-toList"></a>}}
\if{latex}{\out{\hypertarget{method-MultiLineString-toList}{}}}
\subsection{Method \code{toList()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MultiLineString$toList()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MultiLineString-fromList"></a>}}
\if{latex}{\out{\hypertarget{method-MultiLineString-fromList}{}}}
\subsection{Method \code{fromList()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MultiLineString$fromList(MultiLineStringList, typeMapping = NULL)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MultiLineString-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-MultiLineString-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MultiLineString$toJSONString(pretty = TRUE)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MultiLineString-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-MultiLineString-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MultiLineString$fromJSONString(MultiLineStringJson, typeMapping = NULL)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MultiLineString-print"></a>}}
\if{latex}{\out{\hypertarget{method-MultiLineString-print}{}}}
\subsection{Method \code{print()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MultiLineString$print(...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MultiLineString-clone"></a>}}
\if{latex}{\out{\hypertarget{method-MultiLineString-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MultiLineString$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
