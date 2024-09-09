#' Enable ez-zarr
#'
#' @return A list with imported modules.
#'
#' @author Charlotte Soneson
#'
#' @examples
#' enableEzZarr()
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
