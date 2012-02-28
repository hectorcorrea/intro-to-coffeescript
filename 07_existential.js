(function() {
  var billTo, label;

  billTo = {};

  billTo.street = "111 Accounting St.";

  billTo.city = "State College";

  label = typeof shipTo !== "undefined" && shipTo !== null ? shipTo : billTo;

  console.log("" + label.street);

}).call(this);
