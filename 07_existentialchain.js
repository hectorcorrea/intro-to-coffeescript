(function() {
  var billTo, city, _ref;

  billTo = {};

  billTo.street = "111 Accounting St.";

  billTo.city = "State College";

  city = (_ref = typeof shipTo !== "undefined" && shipTo !== null ? shipTo.city : void 0) != null ? _ref : billTo.city;

  console.log("City: " + city);

}).call(this);
