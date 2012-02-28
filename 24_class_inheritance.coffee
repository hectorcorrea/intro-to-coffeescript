class TaxCalculator

	constructor: (@tax = 10) ->

	taxAmount: (price) -> price * (@tax/100)

	totalPrice: (price) -> price + @taxAmount(price)


class MeanTaxCalculator extends TaxCalculator

	totalPrice: (price) -> price + @taxAmount(price) + 25

	anotherMethod: -> "hello"

calc = new MeanTaxCalculator(10, 50)
total = calc.totalPrice(500)
console.log "total $ #{total}"

