// This is a manifest file that'll be compiled into application.js, which will include allthe files
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

//= require jquery
//= require jquery.ui.all
//= require rails-ujs
//= require gmaps-auto-complete
// require turbolinks
//= require bootstrap-sprockets
//= require activestorage
// require_tree .


$(document).ready(function() {
  jQuery(function() {
    var completer;

    completer = new GmapsCompleter({
      inputField: 'deceased_address',
      errorField: '#gmaps-error'
    });

    completer.autoCompleteInit({
      country: "us"
    });
  });
});



$(document).ready(function() {
  var completer;
  completer = new GmapsCompleter({inputField: 'deceased_address', errorField: 'form#search #address_error'});
  completer.autoCompleteInit({region: 'DK'});
});
