
ui <- page_navbar(
  
  title = navbar_brand,
  id = "main",
  lang = "en",
  header = includeCSS("www/styles.css"),
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
          "file drop",
          fileInputArea("upload_pdf",
                        label = 'Drop files here',
                        buttonLabel = "Must be PDF",
                        multiple = FALSE,
                        accept = ".pdf",
                        width = "100%"
          )
      )
    )

  ),
  
  nav_panel(
    title = "Extract Table",
    h2("Extract!"),
    p("some more text")
  ),
  
)