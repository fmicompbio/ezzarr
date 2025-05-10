#' @importFrom basilisk BasiliskEnvironment

.pip_dependencies <- c(
    "python==3.10",
    "ez_zarr==0.3.8"
)

ezzarrenv <- BasiliskEnvironment(
    envname = "ezzarr", pkgname = "ezzarr",
    packages = character(0),
    pip = .pip_dependencies
)

