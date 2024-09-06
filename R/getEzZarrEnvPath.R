#' Get path to ez-zarr conda environment
#'
#' @return A character scalar indicating the path to the conda environment
#' provided by the package.
#'
#' @author Charlotte Soneson
#'
#' @examples
#' getEzZarrEnvPath()
#'
#' @export
#'
#' @importFrom basilisk obtainEnvironmentPath
getEzZarrEnvPath <- function() {
    basilisk::obtainEnvironmentPath(ezzarrenv)
}
