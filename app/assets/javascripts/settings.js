// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
function ready() {
  $('textarea').froalaEditor();
}

$(document).ready(ready);
$(document).on('turbolinks:load', ready);
