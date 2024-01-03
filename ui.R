
ui <- page_navbar(
  
  title = navbar_brand,
  id = "test",
  lang = "en",
  theme = theme,
  
  bg = navbar_col,
  
  nav_panel(
    title = "Get Started",
    layout_column_wrap(
      card(
          h2("PDF Data Extraction Tool"),
          p("some text")
      ),
      card(
          "file drop"
      )
    )

  ),
  
  nav_panel(
    title = "Extract Table",
    h2("Extract!"),
    p("some more text")
  ),
  
)