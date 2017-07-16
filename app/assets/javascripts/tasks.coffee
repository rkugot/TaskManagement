# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#tasks').sortable
    axis: 'y'
    update: ->
      $.post($(this).data('update-url'), $(this).sortable('serialize'))
  $ ->
  $('.edit_task input[type=submit]').remove()
  $('.edit_task input[type=checkbox]').click ->
    $(this).parent('form').submit()
    return
  return

