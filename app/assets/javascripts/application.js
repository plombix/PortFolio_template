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
//= require best_in_place
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require flipclock.min
$(document).ready(function() {
    $('.best_in_place').best_in_place();
    $('.your-clock').FlipClock({
        clockFace: 'TwentyFourHourClock'
    });
})
if (!window.console) console = {};
console.log = console.log || function(){};
console.warn = console.warn || function(){};
console.error = console.error || function(){};
console.info = console.info || function(){};
