// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs

//= require bootstrap-sprockets
//= require_tree .
//= require footable.core

$('.nav a').on('click', function() {
    $('.nav').find('.active').removeClass('active');
    $(this).parent().addClass('active');
});
$(document).on('page:load', function() {
    // your stuff here
    $("table").footable();
    $('#my-link').click(function (event) {
        alert('Hooray!');
        event.preventDefault(); // Prevent link from following its href
    });

    function myfunction() {
        alert(1);
    }
});

function myfunction(isbn, index, current_email) {
    //alert(11);
    var email_selected = document.getElementById('user_user_select' + index);
    var email, r;
    if (email_selected !== null) {
        email = email_selected.options[email_selected.selectedIndex].textContent;
        r = confirm('Are you sure that you want to checkout book for the user: ' + email);
    }
    else {
        r = confirm('Are you sure that you want to checkout the book?');
    }
    if (r == true) {
        if (email === undefined) {
            email = current_email;
        }
        window.location.replace('/checkoutBook?email=' + email + '&id='+isbn);
    }
    else {
        console.log("declined");
    }
}

function setEmail(isbn, current_email) {
    window.location.replace('/setEmail?email=' + current_email + '&id='+isbn);
}

$('#user_1').click(function (event) {
    //alert('Hooray!');
    //event.preventDefault(); // Prevent link from following its href
    var email_selected = document.getElementById('user_' + 1);
    var email = str[str .selectedIndex].value;
    var r = confirm('Are you sure that you want to checkout book for the user' + email);
    if (r == true) {

    }
    else {
        console.log("declined");
    }
});

$(document).ready(function () {
    $('.footable').footable();
    $("table").footable();
    for(var i = 0; i< 100; i++) {
       // document.getElementById('user_' +i).removeAttribute("href");
    }
    console.log(i);
});
