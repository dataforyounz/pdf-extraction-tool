
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
      height = 450,
      fill = FALSE,
      style = css(grid_template_columns = "2fr 1fr"),
      card( 
          card_header("Getting Started", style = "background-color: #373a3c; color: #f8f9fa"),
          card_body(
          h5("Welcome to the PDF Data Extraction Tool!", style = paste0("color: ", primary_col, ";") ),
          p("some text"),
          p("Oh, and just a heads up, don't upload the full PDF. Just upload the page(s) that contain your data tables.
If your PDF is full of heavy images or is hundreds of pages long, any tool will have a hard time handling it. Many PDF readers, like Preview on Mac or Adobe Acrobat, let you save one or several pages of a PDF as their own separate file. Trying doing that if your chosen PDF extraction tool is working slowly.")
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
    layout_column_wrap(
      width = 500,
      height = 600,
      fixed_width = TRUE,
      card(
        card_header("PDF Viewer"),
        uiOutput("pdf_viewer")
      ),
      card(
        rHandsontableOutput("table_output") 
      )
    )
  ),
  
  nav_panel(
    title = "Test View",
    page_sidebar(
      sidebar = sidebar(

      )
    )
  )
  
)