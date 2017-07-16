# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#tasks').sortable
    axis: 'y'
    update: ->
      $.post($(this).data('update-url'), $(this).sortable('serialize'))
jQuery.fn.submitOnCheck = ->
  @find('input[type=submit]').remove()
  @find('input[type=checkbox]').click ->
    $(this).parent('form').submit()
  this

jQuery ->
    $('.edit_task').submitOnCheck()


