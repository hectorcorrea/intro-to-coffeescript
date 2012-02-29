(function() {
  var person, setName;

  setName = function(newName) {
    return this.name = newName;
  };

  person = {};

  person.setName = setName;

  person.setName("Benjamin Franklin");

  console.log("" + person.name);

  setName("Superman");

  console.log("" + person.name);

  console.log("" + name);

}).call(this);
