$ ->

	x = $("#btnTest")
	x.setText = (newText) -> 
		this[0].value = newText
	x.setText "something"

	$("#btnTest").bind "click", =>
		this.setText "Clicked!"