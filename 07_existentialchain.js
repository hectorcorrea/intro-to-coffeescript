(function() {
  var attn, billTo, city, shipTo, _ref, _ref2, _ref3;

  billTo = {};

  billTo.street = "111 Accounting St.";

  billTo.city = "State College";

  shipTo = {};

  shipTo.street = "222 Warehouse Bldv.";

  shipTo.city = "Bellefonte";

  shipTo.attn = {
    name: "John Doe",
    title: "Mr."
  };

  city = (_ref = shipTo != null ? shipTo.city : void 0) != null ? _ref : billTo.city;

  console.log("City: " + city);

  attn = (_ref2 = shipTo != null ? (_ref3 = shipTo.attn) != null ? _ref3.name : void 0 : void 0) != null ? _ref2 : "N/A";

  console.log("Attn: " + attn);

}).call(this);
