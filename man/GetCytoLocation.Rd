% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GetCytoLocation.R
\name{GetCytoLocation}
\alias{GetCytoLocation}
\title{Get exact location of the interested cytogenetics feature}
\usage{
GetCytoLocation(cyto_feature = NULL, chr = NULL, start = NULL, end = NULL)
}
\arguments{
\item{cyto_feature}{the cytogenetics location you are interested. It can be
of two format: chr20(q11.1-q13.1) or chr20. For the first format, the start
and end regions need to be separated by "-". If you are interested in one
region for example, chr20(q11.1), put it as chr20(q11.1-11.1). For the second
format, all the available regions will be printed for selection.}

\item{chr}{chromosome location of the interested region. This is only used
when cyto_feature is null.}

\item{start}{starting location of the interested region. This is only used
when cyto_feature is null.}

\item{end}{ending location of the interested region. This is only used
when cyto_feature is null.}
}
\value{
If the first format of cyto_feature is provided, the starting and
ending location as well as the number of genes overlapped with be provided.
If the second format of cyto_feature is provided, all the cytogenetics locations
will be displayed for review. If the region location (chr, start, end) is
provided, the number of genes overlapped will be the output.
}
\description{
This function helps you identify the location of the cytogenetics feature.
For example, if the region of interest is chr20(q11.1-q13.1), this function
greps the start and end location of this
region. Additionally, you can just put in "chr20", and it provides you all
the available cytogenetics locations on chromosome 20.
It also report the number of genes within the region. If the number of genes
is too few, we recommend to include neighboring regions to provide more
stable results.
}
\examples{
### example 1
GetCytoLocation(cyto_feature = "chr20(q11.1-q13.1)")
### example 2
GetCytoLocation(cyto_feature = "chr20")
### example 3
GetCytoLocation(chr = "chr20", start = 25600000, end = 49800000)

}
