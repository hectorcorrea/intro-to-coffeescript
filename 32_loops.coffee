# Most of the loops you'll write in CoffeeScript will be comprehensions 
# over arrays, objects, and ranges. Comprehensions replace (and compile 
# into) for loops, with optional guard clauses and the value of the 
# current array index. Unlike for loops, array comprehensions are 
# expressions, and can be returned and assigned.
# 
# http://coffeescript.org/#loops

colors = ['red', 'blue', 'white']

console.log "Sample 1 (loop) ------------"
for color in colors
	console.log color


console.log "\r\nSample 2 (loop with i) ------------"
for color, i in colors
	console.log i, color


console.log "\r\nSample 3 (comprehension) ------------"
toUpper = (v) -> v.toUpperCase()

upper = (toUpper(c) for c in colors)
console.log upper


