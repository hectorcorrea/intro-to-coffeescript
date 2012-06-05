$ -> 

  $("#btnSave").click ->
    for r in $(".required")
      if $(r).val() is ""
        $(r).addClass("missing") 
      else
        $(r).removeClass("missing") 

  return