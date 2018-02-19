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
//= require turbolinks
//= require jquery
//= require jquery.slick
//= require cocoon
//= require froala_editor.min
//= require plugins/font_size.min
//= require plugins/link.min
//= require_tree .

var body, burgerMenu, burgerContain, burgerNav;

function toggleClasses() {
  [body, burgerContain, burgerNav].forEach(function (el) {
    el.classList.toggle('open');
  });
}


function ready() {
  body = document.body;
  burgerMenu = document.getElementsByClassName('b-menu')[0];
  burgerContain = document.getElementsByClassName('b-container')[0];
  burgerNav = document.getElementsByClassName('b-nav')[0];

  burgerMenu.removeEventListener('click', toggleClasses);
  burgerMenu.addEventListener('click', toggleClasses, false);
}

$(document).ready(ready);
$(document).on('turbolinks:load', ready);
