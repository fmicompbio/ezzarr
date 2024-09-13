#' Get the version of ez-zarr python package
#'
#' @return A character scalar indicating the version of ez-zarr installed in
#' the conda environment provided with the package.
#'
#' @author Charlotte Soneson
#'
#' @examples
#' getEzZarrVersion()
#'
#' @export
#'
#' @importFrom reticulate import
#' @importFrom basilisk basiliskStart basiliskRun basiliskStop
getEzZarrVersion <- function() {
    cl <- basiliskStart(ezzarrenv)
    ezzarr.version <- basiliskRun(cl, function() {
        X <- reticulate::import("ez_zarr")
        X$`__version__`
    })
    basiliskStop(cl)
    ezzarr.version
}
