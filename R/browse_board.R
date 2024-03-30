#' Interactively browse a pin board
#'
#' Opens a Shiny app to explore available pins and their metadata.
#'
#' @param board A pin board, created by [pins::board_folder()],
#'   [pins::board_connect()], [pins::board_url()] or another `board_` function.
#'
#' @examples
#' \dontrun{
#' my_board <- board_demo()
#' browse_board(my_board)
#' }
#' @export
browse_board <- function(board) {
  board_arg <- as.character(rlang::call_args(rlang::call_match()))

  ui <- page_fluid(
    uiOutput("pin_cards")
  )

  server <- function(input, output, session) {
    board_meta <- pins::pin_search(board) |>
      dplyr::arrange(name)

    # Render a card for each pin on the board
    output$pin_cards <- renderUI({
      purrr::pmap(board_meta, pin_card, board_name = board_arg)
    })

    # Stop on "Done"
    observeEvent(input$done, {
      stopApp()
    })
  }

  runGadget(ui, server, viewer = paneViewer())
}
