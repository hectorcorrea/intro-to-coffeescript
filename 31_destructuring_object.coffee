# Object pattern matching
# Idea taken from CoffeeScript Accelerated JavaScript development p. 49

fetchCustomer = (id) ->
  # Make an Ajax request to fetch the customer data...
  customer = 
    name: "Acme Corporation"
    address: "123 desert"
    attention: "Wile E. Coyote"
    email: "wile@acme.com"
  customer

{name, address} = fetchCustomer(1)
console.log "#{name}: #{address}"