(function() {
  var MyObject,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  MyObject = (function() {

    function MyObject() {
      this.handler = __bind(this.handler, this);      this.count = 0;
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
