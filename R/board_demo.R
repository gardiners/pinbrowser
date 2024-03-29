#' Generate a demo pin board
#'
#' Generate a [pins::board_temp()] using R's built-in datasets `mtcars`,
#' `BJsales`, `beaver1`, and some of their metadata.
#'
#' @examples
#' my_board <- board_demo()
#' @export
board_demo <- function() {
  board <- pins::board_temp()

  pins::pin_write(
    board,
    datasets::mtcars,
    name = "mtcars",
    title = "Motor Trend Car Road Tests",
    description = "The data was extracted from the 1974 Motor Trend US magazine,
    and comprises fuel consumption and 10 aspects of automobile design and
    performance for 32 automobiles (1973&ndash;74 models).",
    tags = c("1974", "datasets", "cars", "data.frame"),
    metadata = list(
      source = "Henderson and Velleman (1981), Building multiple
      regression models interactively. Biometrics, 37, 391&ndash;411.",
      rows = nrow(mtcars),
      columns = ncol(mtcars),
      length = length(mtcars),
      data_dictionary = labelled::generate_dictionary(mtcars)
    ))

  pins::pin_write(
    board,
    datasets::BJsales,
    name = "BJsales",
    title = "Sales Data with Leading Indicator",
    description = 'The sales time series `BJsales` and leading indicator
    `BJsales.lead` each contain 150 observations. The objects are of class
    "`ts`".',
    tags = c("1976", "time series"),
    metadata = list(
      source = "G. E. P. Box and G. M. Jenkins (1976): Time Series Analysis,
      Forecasting and Control, Holden-Day, San Francisco, p. 537.",
      rows = nrow(BJsales),
      columns = ncol(BJsales),
      length = length(BJsales)
    ))

  pins::pin_write(
    board,
    datasets::beaver1,
    name = "beaver1",
    title = "Body Temperature Series of Two Beavers",
    description = "Reynolds (1994) describes a small part of a study of the
    long-term temperature dynamics of beaver _Castor canadensis_ in
    north-central Wisconsin. Body temperature was measured by telemetry every 10
    minutes.",
    tags = c("1994", "beavers", "temperature"),
    metadata = list(
      source = "P. S. Reynolds (1994) Time-series analyses of beaver body
      temperatures. Chapter 11 of Lange, N., Ryan, L., Billard, L., Brillinger,
      D., Conquest, L. and Greenhouse, J. eds (1994) Case Studies in Biometry.
      New York: John Wiley and Sons.",
      rows = nrow(beaver1),
      columns = ncol(beaver1),
      length = length(beaver1),
      data_dictionary = labelled::generate_dictionary(beaver1)
    ))

  return(board)
}
