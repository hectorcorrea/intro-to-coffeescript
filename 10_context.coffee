$ ->

	# Value of "this" is the button	
	$('#btnTest1').click -> 
		alert this.value

	# Value of "this" is the DOM Window 
	$('#btnTest2').click -> 
		setTimeout -> 
			alert this.value
		, 300

	# Value of "this" if the jQuery XML HTTP Request (jqXHR) object
	$('#btnTest3').click ->
		url = "file:///Users/hector/dev/coffee/intro-to-coffeescript/10_context.txt"
		$.get url, (data) ->
				alert this.value

