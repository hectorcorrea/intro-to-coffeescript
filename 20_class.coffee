class TaxCalculator
  tax = 0

  constructor: (tax) ->
    this.tax = tax

  taxAmount: (price) -> price * (this.tax/100)

  totalPrice: (price) -> price + (price * (this.tax/100))


calc = new TaxCalculator(20)
price = 100
tax = calc.taxAmount(price)
total = calc.totalPrice(price)

console.log "price $#{price}"
console.log "tax $ #{tax}"
console.log "total $#{total}"









