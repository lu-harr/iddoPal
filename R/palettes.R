#' iddo palettes
#'
#' Palettes for IDDO
#'
#' @format ## `iddo_palettes`
#' An object of class `palettes_palette` with `r length(iddo_palettes)`
#' colour palettes. Use `names(iddo_palettes)` to return all palette names.
#' @source <https://github.com/lu-harr/iddoPal>
#' @author [Lucinda Harrison](https://github.com/lu-harr)
#' @seealso [pal_palette()], [pal_colour()]
#' @examples
#' # Get all palettes by name.
#' names(iddo_palettes)
#'
#' # Plot all palettes.
#' plot(iddo_palettes)
"iddo_palettes"

#' @rdname iddo_palettes
#' @format ## `iddo_palettes_discrete`
#' An object of class `palettes_palette` with
#' `r length(iddo_palettes_discrete)` discrete colour palettes.
#'  Use `names(iddo_palettes_discrete)` to return all palette names.
"iddo_palettes_discrete"

#' @rdname iddo_palettes
#' @format ## `iddo_palettes_sequential`
#' An object of class `palettes_palette` with
#' `r length(iddo_palettes_sequential)` sequential colour palettes.
#'  Use `names(iddo_palettes_sequential)` to return all palette names.
"iddo_palettes_sequential"
