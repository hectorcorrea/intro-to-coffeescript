billTo = {}
billTo.street = "111 Accounting St."
billTo.city = "State College"

shipTo = {}
shipTo.street = "222 Warehouse Bldv."
shipTo.city = "Bellefonte"
shipTo.attn = 
	name: "John Doe"
	title: "Mr."

city = shipTo?.city ? billTo.city
console.log "City: #{city}"

attn = shipTo?.attn?.name ? "N/A"
console.log "Attn: #{attn}"

