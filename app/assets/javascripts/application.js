// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require jquery_ujs
//= require popper
//= require tether
//= require bootstrap-sprockets
//= require_tree .
//= require bootstrap-datepicker

$(function() {
    $('input.datepicker').data({behaviour: "datepicker"}).datepicker();
});

function styleCurrentLink() {
    const navLinks = document.querySelectorAll('.navbar-brand');

    for (let i=0; i<navLinks.length; i++){
        const link = navLinks[i];
        console.log(link);
        if (link.href === window.location.href) {
            link.classList.add('current-nav-link');
        }
    }
}


document.addEventListener('DOMContentLoaded', function() {
    styleCurrentLink();
});