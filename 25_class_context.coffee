class InvoiceForm

	constructor: (@customer) ->

	# Value of "this" might not be the InvoiceForm class 
	calculateTotal: ->
		# do some fancy calculation
		total = 10
		alert "#{this.customer} your total is #{total}" 

$ ->
	invoice = new InvoiceForm("Acme Corporation")
	invoice.calculateTotal()	
	#$('#btnCalculate').click invoice.calculateTotal 
