# Generate a bslib card that describes a pin
pin_card <- function(name, meta, ..., board_name) {
  with(
    meta,
    card(
      card_header(
        glue_md("**{name}**: {title}"),
        hashtags(meta$tags)),

      code(generate_pin_code(board_name = board_name, pin_name = name)),

      markdown(description),

      card_footer(glue_md(
        "`{pin_hash}` on {created}"
      )),
      full_screen = TRUE)
  )
}
