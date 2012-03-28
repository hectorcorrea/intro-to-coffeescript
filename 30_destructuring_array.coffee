# Array pattern mathing
# Sample taken from: http://coffeescript.org/#destructuring
weatherReport = (location) ->
  # Make an Ajax request to fetch the weather...
  ["State College, PA", 72, "Sunny"]

[city, temp, forecast] = weatherReport "16801"

console.log "#{city}: #{temp} #{forecast}"

