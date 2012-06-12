billTo = {}
billTo.street = "111 Bill To St."
billTo.city = "State College"

# shipTo = {}
# shipTo.street = "222 Ship To St."
# shipTo.city = "Bellefonte"

label = shipTo ? billTo
console.log "#{label.street}"
