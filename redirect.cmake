execute_process(
  COMMAND "${command}"
  OUTPUT_FILE ${output-file}
  RESULTS_VARIABLE results
  ERROR_VARIABLE error)
foreach(result IN LISTS results)
  if(result)
    message(FATAL_ERROR "${command}: ${error}")
  endif()
endforeach()
