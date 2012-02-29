(function() {
  var MyObject,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  MyObject = (function() {

    MyObject.myTitle = "my object";

    function MyObject() {
      this.boundHandler = __bind(this.boundHandler, this);      $(window).resize(this.handler);
    }

    MyObject.prototype.handler = function(event) {
      var newHtml;
      newHtml = "" + this.myTitle;
      $("#placeHolder").html(newHtml);
      return false;
    };

    MyObject.prototype.boundHandler = function(event) {
      var newHtml;
      newHtml = "" + this.myTitle;
      $("#placeHolder").html(newHtml);
      return false;
    };

    return MyObject;

  })();

  $(function() {
    window.myObject = new MyObject();
    window.myTitle = "The Global Object";
  });

}).call(this);
