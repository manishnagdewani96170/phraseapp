$(document).ready ->
  $.ajax
    url: '/phrases'
    type: 'GET'
    dataType: 'script'
    success: (data) ->
      console.log data
      return
    failure: (data) ->
      console.log data
      return

