# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'ready page:load', ->
  password = document.getElementById('user_password')
  password_confirmation = document.getElementById('user_password_confirmation')

  validatePassword = ->
    password = document.getElementById('user_password')
    password_confirmation = document.getElementById('user_password_confirmation')
    if password.value == password_confirmation.value
      password_confirmation.setCustomValidity ''
    else
      password_confirmation.setCustomValidity 'Passwords Don\'t Match'
    return

  password.onchange = validatePassword
  password_confirmation.onkeyup = validatePassword