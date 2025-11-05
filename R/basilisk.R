#' @importFrom basilisk BasiliskEnvironment

.pip_dependencies <- c(
    "python==3.12",
    "ez_zarr==0.4.2"
)

ezzarrenv <- BasiliskEnvironment(
    envname = "ezzarr", pkgname = "ezzarr",
    packages = .pip_dependencies
)

