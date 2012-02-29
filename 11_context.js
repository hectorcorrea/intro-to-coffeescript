
/*
$ ->

	getServerData = ->
		console.log "before AJAX get"
		url = "file:///Users/hector/dev/coffee/intro-to-coffeescript/11_context.txt"
		$.get url, (data) =>
				$(this.el).val(data)
		console.log "after AJAX get"

	console.log "document ready started..."

	# Wire up the form to add more elements to the tree
	$('#buttonLeft').click (el) ->
		el.preventDefault()
		this.el = el
		getServerData()

	$('#buttonRight').click (el) ->
		el.preventDefault()
		getServerData()

	console.log "...document ready ended."
	return
*/

(function() {



}).call(this);
