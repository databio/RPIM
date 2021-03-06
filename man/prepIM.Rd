% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prep.R
\name{prepIM}
\alias{prepIM}
\title{Prepares the intermediate methylation (IM) table}
\usage{
prepIM(bsData, cacheDir = getOption("RESOURCES.RCACHE"), imLower = 0.25,
  imUpper = 0.75, confLevel = 0.95)
}
\arguments{
\item{bsData}{Bisulfite sequencing data}

\item{cacheDir}{If using caching, this argument specifies the directory to
use for storing the cache;
defaults to global option for \code{RESOURCES.RACHE},
if no such option has been specified you must provide one}

\item{imLower}{The lower boundary for intermediate methylation (IM);
if a site is entirely below this threshold
(or if any part of its binomial credibility interval overlaps this boundary)
it is not considered IM;
default is .25}

\item{imUpper}{The upper boundary for intermediate methylation (IM);
if a site is entirely above this threshold
(or if any part of its binomial credibility interval overlaps this boundary)
it is not considered IM;
default is .75}

\item{confLevel}{A decimal indicating the level of confidence
to be used while creating cached the binomial bayes credibility interval;
default is .95 for 95 percent confidence}
}
\value{
A \code{data.table} object with the following columns:
\itemize{
 \item{chr} {chromosome of methylation read}
 \item{start} {starting position for methylation read}
 \item{IM} {boolean indicator of itermediate methylation status}
 }
}
\description{
Prepares the intermediate methylation (IM) table
}
