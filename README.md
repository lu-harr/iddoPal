
<!-- README.md is generated from README.Rmd. Please edit that file -->

# iddoPal

<!-- badges: start -->
<!-- badges: end -->

Colour palettes for R inspired by the [Infectious Diseases Data
Observatory](https://www.iddo.org).

This package was written using the `palettes` package, using the
accompanying
[guide](https://mccarthy-m-g.github.io/palettes/articles/creating-packages.html).
See also Gerry Ryan’s
[`idpalette`](https://github.com/idem-lab/idpalette).

## Included palettes

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

## Installation

You can install the development version of `iddoPal` from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("luharr/iddoPal")
```

## Usage

``` r
library(iddoPal)
```

`iddoPal` comes with 1 1 discrete colour palette and 5 sequential colour
palettes, which can be accessed from the following R objects:

- `iddo_palettes_discrete` for discrete palettes
- `iddo_palettes_sequential` for sequential palettes
- `iddo_palettes` for all palettes

To preview the palettes in the console simply print them:

``` r
iddo_palettes_discrete
```

<img src="man/figures/README-/iddo-palettes-discrete.svg" width="100%" />

To preview the palettes in the Plots pane use `plot()`:

``` r
plot(iddo_palettes_sequential)
```

<img src="man/figures/README-plot-iddo-palettes-sequential-1.png" width="100%" />

To cast palettes to a tibble use `as_tibble()`:

``` r
as_tibble(iddo_palettes)
```

<img src="man/figures/README-/as-tibble.svg" width="100%" />

Palettes can be subset using `[`, `[[`, and `$`.

- To extract a single palette as a colour vector use `[[` or `$`:

  ``` r
  iddo_palettes_sequential[["blue_to_red"]]
  ```

  <img src="man/figures/README-/extract-vector-1.svg" width="100%" />

  ``` r
  iddo_palettes_sequential$greys
  ```

  <img src="man/figures/README-/extract-vector-2.svg" width="100%" />

- To get names of palettes use `names()`:

  ``` r
  names(iddo_palettes_sequential)
  #> [1] "blues"       "reds"        "reds_mute"   "greys"       "blue_to_red"
  ```

## Demonstration

`iddo_palettes` may be then be used for R Base Graphics or `ggplot2`
visualisations:

``` r
library(ggplot2)

ggplot(faithfuld,
       aes(waiting, eruptions)) +
  geom_raster(
    aes(fill = density)
  ) +
  scale_fill_gradientn(
    colours = iddo_palettes$blue_to_red
  )
```

<img src="man/figures/README-demo-1.png" width="100%" />

``` r

# This isn't very elegant but I promise Base Graphics is usually the most 
# straightforward way of doing things ! I promise !
pal <- iddo_palettes$all_cols[c(1,2,7)]

plot(iris$Sepal.Length, iris$Petal.Length, 
     col = alpha(pal[as.numeric(as.factor(iris$Species))], 0.5),
     pch = 16, xlab="Sepal Length", ylab="Petal Length")
legend("bottomright", 
       fill = pal,
       levels(as.factor(iris$Species)))
```

<img src="man/figures/README-demo-2.png" width="100%" />

## License

CC0
