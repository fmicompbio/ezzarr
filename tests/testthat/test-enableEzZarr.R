test_that("enableEzZarr works", {
    env <- enableEzZarr()

    expect_type(env, "list")
    expect_length(env, 3L)
    expect_named(env, c("plt", "np", "ez_zarr"))

    expect_type(env$ez_zarr, "list")
    expect_length(env$ez_zarr, 3L)
    expect_named(env$ez_zarr, c("ome_zarr", "plotting", "utils"))

    expect_type(env$plt$isinteractive(), "logical")
    expect_type(env$np$`__version__`, "character")
    expect_identical(env$np$ones(list(2L, 3L)), array(1, c(2, 3)))
    expect_type(env$ez_zarr$ome_zarr$`__version__`, "character")
    expect_type(env$ez_zarr$plotting$plate_layouts, "list")
})
