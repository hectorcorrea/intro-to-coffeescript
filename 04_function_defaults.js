(function() {
  var itemPrice, total, totalPrice;

  totalPrice = function(price, discountPercent, taxPercent) {
    if (discountPercent == null) discountPercent = 0;
    if (taxPercent == null) taxPercent = 10;
    price = price - (price * (discountPercent / 100));
    return price + (price * (taxPercent / 100));
  };

  itemPrice = 100;

  total = totalPrice(itemPrice);

  console.log("total price = " + total);

}).call(this);
