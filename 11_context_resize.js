(function() {
  var MyObject;

  MyObject = (function() {

    function MyObject() {
      this.count = 0;
      this.myTitle = "MyObject";
      $(window).resize(this.handler);
    }

    MyObject.prototype.handler = function(event) {
      var newHtml;
      this.count++;
      newHtml = "" + this.myTitle + " " + this.count;
      $("#placeHolder").html(newHtml);
      return false;
    };

    return MyObject;

  })();

  $(function() {
    window.myObject = new MyObject();
    window.myTitle = "Global Object";
  });

}).call(this);
