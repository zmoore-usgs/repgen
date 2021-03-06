% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils-plot.R
\name{extendYaxisLimits}
\alias{extendYaxisLimits}
\title{Extend y-Axis Limits}
\usage{
extendYaxisLimits(gsplot, comparisonLims, side)
}
\arguments{
\item{gsplot}{The gsplot object to extend limits for}

\item{comparisonLims}{A vector containing minimum and maximum points to compare to Y-axis limits}

\item{side}{The axis to be changed/compared to (default is 2, the y-axis).}
}
\description{
Extends the Y-Axis limits if the error bars extend further than the current limits.
Sets the y-limits to the smallest (and largest) value between the error bars and current plot limits.
}
