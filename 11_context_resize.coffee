# Shows how the meaning of "this" in the handler method by default 
# will be the DOMObject rather than "MyObject". But we can lock the
# value of "this" to the current object by using the fat arrrow (=>)
#
# Source: http://metaskills.net/2011/05/22/bind-jquery-event-handlers-to-this-object-with-coffeescript/
#
class MyObject

  constructor: (window) ->
    @count = 0
    @myTitle = "MyObject"
    $(window).resize @resizeIt

  resizeIt: (event) =>
    this.count++
    newHtml = "#{this.myTitle} #{this.count}"
    $("#placeHolder").html(newHtml)
    false

$ ->
  window.myObject = new MyObject(window)
  window.myTitle = "Global Object"
  return
