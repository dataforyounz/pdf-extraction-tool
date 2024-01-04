
ui <- page_navbar(
  
  title = navbar_brand,
  id = "main",
  lang = "en",
  header = includeCSS("www/styles.css"),
  theme = theme,
  
  bg = navbar_col,
  
  nav_panel(
    title = "File Import",
    layout_column_wrap(
      width = NULL,
      height = 400,
      fill = FALSE,
      style = css(grid_template_columns = "2fr 1fr"),
      card( 
          card_header("Getting Started", style = "background-color: #373a3c; color: #f8f9fa"),
          card_body(
          h5("Welcome to the PDF Data Extraction Tool!", style = paste0("color: ", primary_col, ";") ),
          p("some text")
          )
      ),
      card( 
          card_header("Upload File", style = "background-color: #373a3c; color: #f8f9fa"),
          fileInputArea("upload_pdf",
                        label = 'Drag and drop your PDF files here',
                        buttonLabel = "Or just click to search",
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