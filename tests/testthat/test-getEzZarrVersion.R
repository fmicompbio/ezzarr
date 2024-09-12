test_that("get_EzZarrVersion works", {
    v <- getEzZarrVersion()
    expect_type(v, "character")
    expect_equal(v, sub("ez_zarr==", "", grep("ez_zarr==", ezzarr:::.pip_dependencies, value = TRUE)))
})
