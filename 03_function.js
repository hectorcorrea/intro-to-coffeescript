(function() {
  var n, s, square;

  square = function(x) {
    return x * x;
  };

  n = 3;

  s = square(n);

  console.log("square of " + n + " is " + s);

}).call(this);
