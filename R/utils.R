# Interpolate a Markdown string and return HTML
glue_md <- function(..., .envir = parent.frame()) {
  stringr::str_glue(..., .envir = .envir) |>
    shiny::markdown()
}

# Format a vector of pin tags
hashtags <- function(pin_tags) {
  sort(pin_tags) |>
    purrr::map(\(tag) stringr::str_glue("`#{tag}`")) |>
    paste(collapse = " ") |>
    shiny::markdown()
}

# Generate code to read a named pin from a named board
generate_pin_code <- function(board_name, pin_name){
  var_name <- make.names(pin_name)
  stringr::str_glue(
    '{var_name} <- pins::pin_read({board_name}, "{pin_name}")'
  )
}
