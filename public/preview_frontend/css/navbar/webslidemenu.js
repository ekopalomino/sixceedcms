/*
 * Plugin: Web Slide - Responsive Mega Menu for Bootstrap 3+
 * Demo Link: http://webslidemenu.webthemex.com/
 * Version: v3.3
 * Author: webthemex
 * License: http://codecanyon.net/licenses/standard
*/
 
document.addEventListener("touchstart", function() {},false); 
$(function() { 
		$('.wsdownmenu').append($('<a class="wsdownmenu-animated-arrow"><span></span></a>'));
		$('.wsdownmenu').append($('<div class="wsdownmenu-text"></div>'));

		$('.wsdownmenu-list > li').has('.wsdownmenu-submenu').prepend('<span class="wsdownmenu-click"><i class="wsdownmenu-arrow fa fa-angle-down"></i></span>');
		$('.wsdownmenu-submenu > li').has('ul').prepend('<span class="wsdownmenu-click02"><i class="wsdownmenu-arrow fa fa-angle-down"></i></span>');
		$('.wsdownmenu-submenu-sub > li').has('ul').prepend('<span class="wsdownmenu-click02"><i class="wsdownmenu-arrow fa fa-angle-down"></i></span>');
 		$('.wsdownmenu-submenu-sub-sub > li').has('ul').prepend('<span class="wsdownmenu-click02"><i class="wsdownmenu-arrow fa fa-angle-down"></i></span>');
		$('.wsdownmenu-list li').has('.megamenu').prepend('<span class="wsdownmenu-click"><i class="wsdownmenu-arrow fa fa-angle-down"></i></span>');
		
		$('.wsdownmenu-animated-arrow').click(function(){$('.wsdownmenu-list').slideToggle('slow')
		$(this).toggleClass('wsdownmenu-lines')
		;});

		$('.wsdownmenu-click').click(function(){
		$(this).toggleClass('wsdownmenuarrow-rotate').parent().siblings().children().removeClass('wsdownmenuarrow-rotate');
		$(".wsdownmenu-submenu, .megamenu").not($(this).siblings('.wsdownmenu-submenu, .megamenu')).slideUp('slow');
		$(this).siblings('.wsdownmenu-submenu').slideToggle('slow');
		$(this).siblings('.megamenu').slideToggle('slow');
		});
		
		$('.wsdownmenu-click02').click(function(){
		$(this).toggleClass('wsdownmenuarrow-rotate').parent().siblings().children().removeClass('wsdownmenuarrow-rotate');
		$(this).siblings('.wsdownmenu-submenu').slideToggle('slow');
		$(this).siblings('.wsdownmenu-submenu-sub').slideToggle('slow');
		$(this).siblings('.wsdownmenu-submenu-sub-sub').slideToggle('slow');
		});
		
		// Remove inline styles when browser > 767
		window.onresize = function(event) {
			console.log('window resize');
			if($(window).width() > 767){
				$('.wsdownmenu-submenu').removeAttr("style");
 				$('.wsdownmenu-list').removeAttr("style");
 			}
    	};
});

 