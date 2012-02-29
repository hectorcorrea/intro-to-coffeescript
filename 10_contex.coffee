setName = (newName) -> 
	@name = newName

person = {}
person.setName = setName
person.setName "Benjamin Franklin"
console.log "#{person.name}"

setName "Superman"
console.log "#{person.name}"
console.log "#{name}"
