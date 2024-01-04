
server <- function( input, output, session ){
  
  reactive_list <- reactiveValues()
  reactive_list$valid_upload   <- NULL
  
  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Allow for upload of larger pdf files
  
  options( shiny.maxRequestSize = 30*1024^2 )
  
  # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Empty PDF placeholder  
  
  output$pdf_viewer <- renderUI( {
   
    div(  class = "flex-container",
      h5("Nothing to see here!")
    )
  })
  
  observeEvent( input$upload_pdf, {
   
    req( input$upload_pdf )
    
    #if( !dir.exists("tmp") ) dir.create("tmp")
    
    file.copy( input$upload_pdf$datapath, "www", overwrite = TRUE )
    
    output$pdf_viewer <- renderUI({
      tags$iframe(style = "width: 100%; height: 600px;", src = "/0.pdf" ) 
    })
    
    reactive_list$valid_upload <- TRUE
    
    if( reactive_list$valid_upload ){
      Sys.sleep(1)
      nav_select( id = "main", selected = "Extract Table", session = session )
    }
  })
  
  
  
}