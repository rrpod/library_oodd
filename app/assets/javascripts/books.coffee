# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

myfunction = (isbn, index, current_email) ->
#alert(11);
  email_selected = document.getElementById('user_user_select' + index)
  email = undefined
  r = undefined
  if email_selected != null
    email = email_selected.options[email_selected.selectedIndex].textContent
    r = confirm('Are you sure that you want to checkout book for the user: ' + email)
  else
    r = confirm('Are you sure that you want to checkout the book?')
  if r == true
    if email == undefined
      email = current_email
    window.location.replace '/checkoutBook?email=' + email + '&id=' + isbn
  else
    console.log 'declined'
  return

