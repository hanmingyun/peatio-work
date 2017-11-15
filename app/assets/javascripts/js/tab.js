$(document).ready(function(){
	$(function() {
	  var total = $("#main .tabs-menu").width();
	  var total2 = total;
	  var ancho = total*4;
	  // $("#main .tabs-menu .wrapper").css({"width":ancho+"px"});
	  var tabs =  $("#main .tabs-menu li");
	  
	  $( window ).resize(function() {
	    var total2 = $("#main .tabs-menu").width();
	    var ancho2 = total2*4;
	    $("#main .tabs-menu .wrapper").css({"width":ancho2+"px"});
	    var clase2 = $(".active").attr("id");
	    $("#main .tabs-menu .wrapper").stop().animate({
	      left: -(total2*(clase2-1)),
	    }, 100);
	  });
	  
	  $('#main .tabs-menu nav ul li').click(function() {
	    var total = $("#main .tabs-menu").width();
	    
	    var clase = $(this).attr("id");
	    tabs.removeClass("active");
	    $(this).addClass("active");
	    $("#main .tabs-menu .wrapper").stop().animate({
	      left: -(total*(clase-1)),
	    }, 1000);
	    
	  });
	});
	   
});