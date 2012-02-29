(function() {
  var itemPrice, total, totalPrice;

  totalPrice = function(price, discountPercent, taxPercent) {
    var discount, tax;
    if (discountPercent == null) discountPercent = 0;
    if (taxPercent == null) taxPercent = 10;
    discount = price * (discountPercent / 100);
    tax = (price - discount) * (taxPercent / 100);
    return price - discount + tax;
  };

  itemPrice = 100;

  total = totalPrice(itemPrice, 50, 7);

  console.log("total price = " + total);

}).call(this);
