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
	
	$('#btnCalculate').click invoice.calculateTotal 


# If you look at the JavaScript code generated, the 
# code to make sure "this" is what you expect is 
# more complicated than a simple _this. 