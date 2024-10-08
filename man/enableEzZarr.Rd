% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/enableEzZarr.R
\name{enableEzZarr}
\alias{enableEzZarr}
\title{Enable ez-zarr}
\usage{
enableEzZarr()
}
\value{
A list with imported modules:
\describe{
    \item{plt}{\code{matplotlib.pyplot}}
    \item{np}{\code{numpy}}
    \item{ez_zarr}{
        \describe{
            \item{ome_zarr}{\code{ez_zarr.ome_zarr}}
            \item{plotting}{\code{ez_zarr.plotting}}
            \item{utils}{\code{ez_zarr.utils}}
        }
    }
}
}
\description{
Activate built-in conda environment that provides python, ez-zarr and its
dependencies using \code{\link[basilisk]{useBasiliskEnv}}, and import the
required modules through \code{reticulate}.
}
\details{
For more usage examples see \code{vignette(package="ezzarr")}.
}
\examples{
env <- enableEzZarr()
names(env)
env$np$`__version__`
env$ez_zarr$ome_zarr$`__version__`

}
\author{
Charlotte Soneson
}
