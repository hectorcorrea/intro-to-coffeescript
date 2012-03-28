(function() {

  $(function() {
    $('#btnTest1').click(function() {
      return alert(this.value);
    });
    $('#btnTest2').click(function() {
      var _this = this;
      return setTimeout(function() {
        return alert(_this.value);
      }, 300);
    });
    return $('#btnTest3').click(function() {
      var url;
      url = "file:///Users/hector/dev/coffee/intro-to-coffeescript/10_context.txt";
      return $.get(url, function(data) {
        return alert(this.value);
      });
    });
  });

}).call(this);
