// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require autocomplete-rails
//= require bootstrap-sprockets
//= require react
//= require react_ujs
//= require components
//= require_tree .

$( document ).on('ready', function() {
  $('#tokenize').tokenize({
    displayDropdownOnFocus: true,
    newElements: false,
    autoSize: true
  });

  $('#btn_collapse').click(function (){
  	$('#area_collapse').collapse('toggle');
  });
  $('#btn_collapse2').click(function (){
    $('#area_collapse_page_view').collapse('toggle');
  });
  $('#btn_collapse3').click(function (){
    $('#indicators_collapse').collapse('toggle');
  });

  $(".alert_animate").fadeTo(2000, 500).slideUp(500, function(){
    $(".alert_animate").slideUp(500);
	});
});

  