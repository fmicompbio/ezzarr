#' Enable ez-zarr
#'
#' Activate built-in conda environment that provides python, ez-zarr and its
#' dependencies using \code{\link[basilisk]{useBasiliskEnv}}, and import the
#' required modules through \code{reticulate}.
#'
#' For more usage examples see \code{vignette(package="ezzarr")}.
#'
#' @return A list with imported modules:
#' \describe{
#'     \item{plt}{\code{matplotlib.pyplot}}
#'     \item{np}{\code{numpy}}
#'     \item{ez_zarr}{
#'         \describe{
#'             \item{ome_zarr}{\code{ez_zarr.ome_zarr}}
#'             \item{plotting}{\code{ez_zarr.plotting}}
#'             \item{utils}{\code{ez_zarr.utils}}
#'         }
#'     }
#' }
#'
#' @author Charlotte Soneson
#'
#' @examples
#' env <- enableEzZarr()
#' names(env)
#' env$np$`__version__`
#' env$ez_zarr$ome_zarr$`__version__`
#'
#' @export
#'
#' @importFrom reticulate import
#' @importFrom basilisk useBasiliskEnv
enableEzZarr <- function() {
    basilisk::useBasiliskEnv(envpath = getEzZarrEnvPath())
    plt <- reticulate::import("matplotlib.pyplot")
    np <- reticulate::import("numpy")
    ez_zarr <- list(
        ome_zarr = reticulate::import("ez_zarr.ome_zarr"),
        plotting = reticulate::import("ez_zarr.plotting"),
        utils = reticulate::import("ez_zarr.utils")
    )
    return(list(plt = plt, np = np, ez_zarr = ez_zarr))
}
