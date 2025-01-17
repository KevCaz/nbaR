% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Crs.r
\docType{class}
\name{Crs}
\alias{Crs}
\title{Crs Class}
\format{
R6 class

R6 class
}
\usage{
# Crs$new()
}
\description{
For more information on the NBA object model, please refer to the
official NBA documentation at
\href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
the NBA model and endpoints reference at
\href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
}
\details{
Model class for Crs objects.
}
\section{Methods}{

\describe{

\item{\code{$new()}}{

Constructor Crs object.

}
\item{\code{$fromList(CrsList)}}{

Create Crs object from list.

}

\item{\code{$toList()}}{

Get list representation of Crs.

}
\item{\code{fromJSONString(CrsJson)}}{

Create Crs object from JSON.

}
\item{\code{toJSONString(pretty=TRUE)}}{

Get JSON representation of Crs.

}
}
}

\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{type}}{character}

\item{\code{properties}}{list}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Crs-new}{\code{Crs$new()}}
\item \href{#method-Crs-toList}{\code{Crs$toList()}}
\item \href{#method-Crs-fromList}{\code{Crs$fromList()}}
\item \href{#method-Crs-toJSONString}{\code{Crs$toJSONString()}}
\item \href{#method-Crs-fromJSONString}{\code{Crs$fromJSONString()}}
\item \href{#method-Crs-print}{\code{Crs$print()}}
\item \href{#method-Crs-clone}{\code{Crs$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Crs-new"></a>}}
\if{latex}{\out{\hypertarget{method-Crs-new}{}}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Crs$new(type, properties)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Crs-toList"></a>}}
\if{latex}{\out{\hypertarget{method-Crs-toList}{}}}
\subsection{Method \code{toList()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Crs$toList()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Crs-fromList"></a>}}
\if{latex}{\out{\hypertarget{method-Crs-fromList}{}}}
\subsection{Method \code{fromList()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Crs$fromList(CrsList, typeMapping = NULL)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Crs-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Crs-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Crs$toJSONString(pretty = TRUE)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Crs-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Crs-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Crs$fromJSONString(CrsJson, typeMapping = NULL)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Crs-print"></a>}}
\if{latex}{\out{\hypertarget{method-Crs-print}{}}}
\subsection{Method \code{print()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Crs$print(...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Crs-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Crs-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Crs$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
