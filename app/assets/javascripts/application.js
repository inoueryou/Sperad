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


//= require rails-ujs
//= require activestorage
//= require jquery
//= require bootstrap-sprockets
//= require_tree .


//= about/top
$(document).ready(function(){
$(".qanda .a").hide();
$(".qanda p.q").click(function(){
     $(this).next().show("slow");
});
$(".qanda p.a").click(function(){
      $(this).hide("slow");
});
$("#fukidashi").mousemove(function(){
     $("#fukidashi img").css({display:"block"});
});
$("#fukidashi").mouseout(function(){
     $("#fukidashi img").css({display:"none"});
});
});


$(function() {
  $('#back a').on('click',function(event){
    $('body, html').animate({
      scrollTop:0
    }, 800);
    event.preventDefault();
  });
});



