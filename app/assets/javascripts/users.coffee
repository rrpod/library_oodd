# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'ready page:load', ->
  password = document.getElementById('user_password').value
  password_confirmation = document.getElementById('user_password_confirmation').value

  validatePassword = ->
    password = document.getElementById('user_password').value
    password_confirmation = document.getElementById('user_password_confirmation').value
    if password.value != password_confirmation.value
      password_confirmation.setCustomValidity 'Passwords Don\'t Match'
    else
      password_confirmation.setCustomValidity ''
    return

  password.onchange = validatePassword
  password_confirmation.onkeyup = validatePassword