test_that("getEzZarrEnvPath works", {
    envpath <- getEzZarrEnvPath()

    expect_type(envpath, "character")
    expect_length(envpath, 1L)
    expect_true(dir.exists(envpath))
})
