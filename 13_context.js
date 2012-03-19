(function() {

  $(function() {
    var x,
      _this = this;
    x = $("#btnTest");
    x.setText = function(newText) {
      return this[0].value = newText;
    };
    x.setText("something");
    return $("#btnTest").bind("click", function() {
      return _this.setText("Clicked!");
    });
  });

}).call(this);
