class TaxCalculator

	constructor: (@tax = 10) ->

	taxAmount: (price) -> price * (@tax/100)

	totalPrice: (price) -> price + @taxAmount(price)

	@isTaxableState: (state) ->
  	state in ['PA', 'MO', 'NY']

state = 'NY'
isTaxable = TaxCalculator.isTaxableState(state)
console.log "state #{state} is taxable? #{isTaxable}"


#isTaxable = if TaxCalculator.isTaxableState(state) then "yes" else "no"
