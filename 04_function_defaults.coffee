totalPrice = (price, discountPercent = 0, taxPercent = 10) ->
  discount = (price * (discountPercent/100))
  tax = (price - discount) * (taxPercent/100)
  price - discount + tax

total = totalPrice(100, 50)
console.log "total price = #{total}"
