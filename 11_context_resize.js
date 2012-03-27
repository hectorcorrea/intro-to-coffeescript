(function() {
  var MyObject,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  MyObject = (function() {

    function MyObject(window) {
      this.resizeIt = __bind(this.resizeIt, this);      this.count = 0;
      this.myTitle = "MyObject";
      $(window).resize(this.resizeIt);
    }

    MyObject.prototype.resizeIt = function(event) {
      var newHtml;
      this.count++;
      newHtml = "" + this.myTitle + " " + this.count;
      $("#placeHolder").html(newHtml);
      return false;
    };

    return MyObject;

  })();

  $(function() {
    window.myObject = new MyObject(window);
    window.myTitle = "Global Object";
  });

}).call(this);
