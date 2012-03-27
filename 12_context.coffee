# Shows how the meaning of "this" in the handler method by default 
# will be the DOMObject rather than "MyObject". But we can lock the
# value of "this" to the current object by using the fat arrrow (=>)
#
# Source: http://metaskills.net/2011/05/22/bind-jquery-event-handlers-to-this-object-with-coffeescript/
#
class MyObject

  constructor: ->
    
    @count = 0
    @myTitle = "MyObject"

    $('#btnGetData').click -> 
      url = "file:///Users/hector/dev/coffee/intro-to-coffeescript/10_context.txt"
      $.get url, (data) ->
        this.count++
        $('#btnGetData').val "#{data} / #{this.count}"
        false

$ ->
  window.myObject = new MyObject()
  window.myTitle = "Global Object"
  return
