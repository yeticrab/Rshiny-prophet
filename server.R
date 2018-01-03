
function(input, output, session) {

  values = reactiveValues()
  

  import_file_server(session$input, session$output)
  observeEvent(input$infile, {
    print(values$indata)
    print(head(indata))
    print(ls())
  })
  
}
