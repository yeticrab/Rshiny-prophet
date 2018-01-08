#### can we import from file

function(input, output, session) {
  
  # imports file and creates data frame
  import_file_server(session$input, session$output)
  explore_parameters_server(session$input, session$output)
  

}