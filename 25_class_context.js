(function() {
  var InvoiceForm;

  InvoiceForm = (function() {

    function InvoiceForm(customer) {
      this.customer = customer;
    }

    InvoiceForm.prototype.calculateTotal = function() {
      var total;
      total = 10;
      return alert("" + this.customer + " your total is " + total);
    };

    return InvoiceForm;

  })();

  $(function() {
    var invoice;
    invoice = new InvoiceForm("Acme Inc.");
    return invoice.calculateTotal();
  });

}).call(this);
