% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/browse_board.R
\name{browse_board}
\alias{browse_board}
\title{Interactively browse a pin board}
\usage{
browse_board(board)
}
\arguments{
\item{board}{A pin board, created by \code{\link[pins:board_folder]{pins::board_folder()}},
\code{\link[pins:board_connect]{pins::board_connect()}}, \code{\link[pins:board_url]{pins::board_url()}} or another \code{board_} function.}
}
\description{
Opens a Shiny app to explore available pins and their metadata.
}
\examples{
\dontrun{
my_board <- board_demo()
browse_board(my_board)
}
}
