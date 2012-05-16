class TaxCalculator

	constructor: (@tax = 10) ->

	taxAmount: (price) -> price * (@tax/100)

	totalPrice: (price) -> price + @taxAmount(price)


class MeanTaxCalculator extends TaxCalculator

	totalPrice: (price) -> price + @taxAmount(price) + 25

	anotherMethod: -> "hello"

calc = new MeanTaxCalculator()
total = calc.totalPrice(500)

console.log calc.anotherMethod()
console.log "total $ #{total}"

