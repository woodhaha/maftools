% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gisticPlot.R
\name{gisticPlot}
\alias{gisticPlot}
\title{Plot gistic results.}
\usage{
gisticPlot(gistic, top = NULL, showTumorSampleBarcodes = FALSE,
  annotation = NULL, bandsToIgnore = NULL, removeNonAltered = FALSE,
  colors = NULL, fontSize = 10)
}
\arguments{
\item{gistic}{an \code{\link{GISTIC}} object generated by \code{\link{readGistic}}}

\item{top}{how many top cytobands to be drawn. defaults to all.}

\item{showTumorSampleBarcodes}{logical to include sample names.}

\item{annotation}{data.frame with first column containing Tumor_Sample_Barcodes and rest of columns with annotations.}

\item{bandsToIgnore}{do not show these bands in the plot Default NULL.}

\item{removeNonAltered}{Logical. If \code{TRUE} removes samples with no mutations in the oncoplot for better visualization. Default \code{FALSE}.}

\item{colors}{named vector of colors Amp and Del events.}

\item{fontSize}{font size for cytoband names. Default 10.}
}
\value{
None.
}
\description{
takes output generated by readGistic and draws a plot similar to oncoplot.
}
\details{
Takes gistic file as input and plots it as a matrix. Any desired annotations can be added at the bottom of the oncoplot by providing \code{annotation}
}
\examples{
all.lesions <- system.file("extdata", "all_lesions.conf_99.txt", package = "maftools")
amp.genes <- system.file("extdata", "amp_genes.conf_99.txt", package = "maftools")
del.genes <- system.file("extdata", "del_genes.conf_99.txt", package = "maftools")
gistic.summary = readGistic(gisticAllLesionsFile = all.lesions, gisticAmpGenesFile = amp.genes, gisticDelGenesFile = del.genes, isTCGA = TRUE)
gisticPlot(gistic.summary)
}
\seealso{
\code{\link{oncostrip}}
}

