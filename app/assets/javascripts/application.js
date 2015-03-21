// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery.turbolinks
//= require_tree .

$(document).ready(function(){
    var maps = $(".map1, .map2, .map3, .map4, .map5");
    var times = $(".time5, .time4, .time3, .time2, .time1");
    var visibleIndex = 0;

    // establish initial opacity for only one of them visible
    maps.css("opacity", 0);
    maps.eq(4).css("opacity", 1);
    times.css("opacity", 0);
    times.eq(4).css("opacity", 1);

    function timelapse() {
        // fade out the currently visible item
        maps.eq(visibleIndex).fadeTo(2200, 0);
        times.eq(visibleIndex).fadeTo(0, 0, function(){
        	times.eq(visibleIndex).delay(2200);
        });

        // at the same time, fade in the next item
        visibleIndex = --visibleIndex % maps.length;
        maps.eq(visibleIndex).fadeTo(500, 1, function() {
            // do a one second delay until the next loop is started
            setTimeout(timelapse, 2000);
        });
        times.eq(visibleIndex).fadeTo(0, 1, function() {
        	times.eq(visibleIndex).delay(2000);
        });
    }

    // start the cycle
    timelapse();

});


