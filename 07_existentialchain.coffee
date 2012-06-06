billTo = {}
billTo.street = "111 Bill To St."
billTo.city = "Bill To City"

shipTo = {}
shipTo.street = "222 Warehouse Bldv."
shipTo.city = "Ship To City"
shipTo.attn = 
  name: "John Doe"
  title: "Mr."

city = shipTo?.city ? billTo.city
console.log "City: #{city}"

# attn = shipTo?.attn?.name ? "N/A"
# console.log "Attn: #{attn}"

