// Generated by CoffeeScript 1.3.1
(function() {
  var InvoiceForm,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  InvoiceForm = (function() {

    InvoiceForm.name = 'InvoiceForm';

    function InvoiceForm(customer) {
      this.customer = customer;
      this.calculateTotal = __bind(this.calculateTotal, this);

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
    invoice = new InvoiceForm("Acme Corporation");
    invoice.calculateTotal();
    return $('#btnCalculate').click(invoice.calculateTotal);
  });

}).call(this);
