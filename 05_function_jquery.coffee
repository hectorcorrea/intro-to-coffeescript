totalPrice = (price, discountPercent = 0, taxPercent = 10) ->
  discount = (price * (discountPercent/100))
  tax = (price - discount) * (taxPercent/100)
  price - discount + tax

updateTotalPrice = ->
  itemPrice = $("#txtPrice").val() 
  discount = $("#txtDiscount").val() unless $("#txtDiscount").val() is ""
  tax = $("#txtTax").val() unless $("#txtTax").val() is ""

  total = totalPrice(itemPrice, discount, tax)

  $("#txtTotal").val(total)

$ -> 
  $("#txtPrice").change updateTotalPrice
  $("#txtDiscount").change updateTotalPrice
  $("#txtTax").change updateTotalPrice
