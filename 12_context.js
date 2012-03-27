(function() {
  var MyObject;

  MyObject = (function() {

    function MyObject() {
      this.count = 0;
      this.myTitle = "MyObject";
      $('#btnGetData').click(function() {
        var url;
        url = "file:///Users/hector/dev/coffee/intro-to-coffeescript/10_context.txt";
        return $.get(url, function(data) {
          this.count++;
          $('#btnGetData').val("" + data + " / " + this.count);
          return false;
        });
      });
    }

    return MyObject;

  })();

  $(function() {
    window.myObject = new MyObject();
    window.myTitle = "Global Object";
  });

}).call(this);
