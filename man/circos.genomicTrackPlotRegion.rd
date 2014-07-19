\name{circos.genomicTrackPlotRegion}
\alias{circos.genomicTrackPlotRegion}
\title{
  Create a track for genomic graphics


}
\description{
  Create a track for genomic graphics


}
\usage{
circos.genomicTrackPlotRegion(data = NULL, ylim = NULL, stack = FALSE,
    numeric.column = NULL, panel.fun = function(region, value, ...)  {NULL}, ...)
}
\arguments{
  \item{data}{A bed-file-like data frame or a list of data frames
  \item{ylim}{If it is \code{NULL}, the value will be calculated from data. If \code{stack} is set to \code{TRUE}, the value is ignored.
  \item{stack}{whether to plot in a "stack" mode.
  \item{numeric.column}{Columns of numeric values in \code{data} that will be used for plotting. 
  \item{panel.fun}{Self-defined function which will be applied on each sector. Please not it is different
  \item{...}{Pass to \code{\link{circos.trackPlotRegion}}.

}
\details{
  Similar as \code{\link{circos.trackPlotRegion}}, users can add customized graphics by \code{panel.fun}, but the behaviour of \code{panel.fun}

  When \code{data} is a single data frame, \code{region} in \code{panel.fun} is a data frame containing the second and third column in \code{data} in 'current` genomic category (e.g. current chromosome).

  When \code{data} is a list containing data frames, \code{panel.fun} will be applied iteratively on each data frame, thus, 

  If \code{stack} is set to \code{TRUE}, \code{ylim} will be re-defined. in \code{stack} mode, the y-axis will be splitted into several part

  When \code{data} is a single data frame containing one or more numeric columns, each numeric column defined in \code{numeric.column} will be treated as a single unit. 

  When \code{data} is a list containing data frames, each data frame will be treated as a single unit. The situation is quite similar as described in previous paragraph.

  Being different from \code{panel.fun} in \code{\link{circos.trackPlotRegion}}, there should be an additional argument \code{...} in \code{panel.fun}. This additional


}
\references{
Gu, Z. (2014) circlize implements and enhances circular visualization in R. Bioinformatics.
}