(function() {
  var TaxCalculator, isTaxable, state;

  TaxCalculator = (function() {

    function TaxCalculator(tax) {
      this.tax = tax != null ? tax : 10;
    }

    TaxCalculator.prototype.taxAmount = function(price) {
      return price * (this.tax / 100);
    };

    TaxCalculator.prototype.totalPrice = function(price) {
      return price + this.taxAmount(price);
    };

    TaxCalculator.isTaxableState = function(state) {
      return state === 'PA' || state === 'MO' || state === 'NY';
    };

    return TaxCalculator;

  })();

  state = 'NY';

  isTaxable = TaxCalculator.isTaxableState(state);

  console.log("state " + state + " is taxable? " + isTaxable);

}).call(this);
