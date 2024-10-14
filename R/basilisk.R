#' @importFrom basilisk BasiliskEnvironment

.conda_dependencies <- c(
    "python==3.10"
)
.pip_dependencies <- c(
    "ez_zarr==0.3.3"
)

ezzarrenv <- BasiliskEnvironment(
    envname = "ezzarr", pkgname = "ezzarr",
    packages = .conda_dependencies,
    channels = c("conda-forge"),
    pip = .pip_dependencies
)

