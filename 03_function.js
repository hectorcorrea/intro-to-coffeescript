(function() {
  var n, s, square;

  square = function(x) {
    return x * x;
  };

  n = 9;

  s = square(n);

  console.log("square of " + n + " is " + s);

}).call(this);
