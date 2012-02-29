# Show how the meaning of "this" in handler will be DOMObject rather than "MyObject"
# Source: http://metaskills.net/2011/05/22/bind-jquery-event-handlers-to-this-object-with-coffeescript/
#
class MyObject

  @myTitle = "my object"

  constructor: ->
    $(window).resize @handler
    #$(window).resize @boundHandler

  # this will be bound to the global "window" object
  handler: (event) ->
    newHtml = "#{this.myTitle}"
    $("#placeHolder").html(newHtml)
    false

  # this will be bound to the current MyObject instance
  # (what you would expect)
  boundHandler: (event) =>
    newHtml = "#{this.myTitle}"
    $("#placeHolder").html(newHtml)
    false

$ ->
  window.myObject = new MyObject()
  window.myTitle = "The Global Object"
  return