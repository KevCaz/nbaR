% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Expert.r
\docType{class}
\name{Expert}
\alias{Expert}
\title{Expert Class}
\format{
R6 class

R6 class
}
\usage{
# Expert$new()
}
\description{
For more information on the NBA object model, please refer to the
official NBA documentation at
\href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
the NBA model and endpoints reference at
\href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
}
\details{
Model class for Expert objects.
}
\section{Methods}{

\describe{

\item{\code{$new()}}{

Constructor Expert object.

}
\item{\code{$fromList(ExpertList)}}{

Create Expert object from list.

}

\item{\code{$toList()}}{

Get list representation of Expert.

}
\item{\code{fromJSONString(ExpertJson)}}{

Create Expert object from JSON.

}
\item{\code{toJSONString(pretty=TRUE)}}{

Get JSON representation of Expert.

}
}
}

\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{agentText}}{character}

\item{\code{fullName}}{character}

\item{\code{organization}}{Organization}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Expert-new}{\code{Expert$new()}}
\item \href{#method-Expert-toList}{\code{Expert$toList()}}
\item \href{#method-Expert-fromList}{\code{Expert$fromList()}}
\item \href{#method-Expert-toJSONString}{\code{Expert$toJSONString()}}
\item \href{#method-Expert-fromJSONString}{\code{Expert$fromJSONString()}}
\item \href{#method-Expert-print}{\code{Expert$print()}}
\item \href{#method-Expert-clone}{\code{Expert$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Expert-new"></a>}}
\if{latex}{\out{\hypertarget{method-Expert-new}{}}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Expert$new(agentText, fullName, organization)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Expert-toList"></a>}}
\if{latex}{\out{\hypertarget{method-Expert-toList}{}}}
\subsection{Method \code{toList()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Expert$toList()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Expert-fromList"></a>}}
\if{latex}{\out{\hypertarget{method-Expert-fromList}{}}}
\subsection{Method \code{fromList()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Expert$fromList(ExpertList, typeMapping = NULL)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Expert-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Expert-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Expert$toJSONString(pretty = TRUE)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Expert-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-Expert-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Expert$fromJSONString(ExpertJson, typeMapping = NULL)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Expert-print"></a>}}
\if{latex}{\out{\hypertarget{method-Expert-print}{}}}
\subsection{Method \code{print()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Expert$print(...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Expert-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Expert-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Expert$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
