# Enable ez-zarr

Activate built-in conda environment that provides python, ez-zarr and
its dependencies using
[`useBasiliskEnv`](https://rdrr.io/pkg/basilisk/man/useBasiliskEnv.html),
and import the required modules through `reticulate`.

## Usage

``` r
enableEzZarr()
```

## Value

A list with imported modules:

- plt:

  `matplotlib.pyplot`

- np:

  `numpy`

- ez_zarr:

  ome_zarr

  :   `ez_zarr.ome_zarr`

  plotting

  :   `ez_zarr.plotting`

  utils

  :   `ez_zarr.utils`

## Details

For more usage examples see `vignette(package="ezzarr")`.

## Author

Charlotte Soneson

## Examples

``` r
env <- enableEzZarr()
names(env)
#> [1] "plt"     "np"      "ez_zarr"
env$np$`__version__`
#> [1] "2.3.4"
env$ez_zarr$ome_zarr$`__version__`
#> [1] "0.4.2"
```
