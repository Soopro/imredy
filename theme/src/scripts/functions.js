$(document).ready(function($){
  "use strict";

  if($('.img-popup').length > 0){
    $('.img-popup').magnificPopup({
      type:'image',
      gallery: {enabled:true},
    });
  }
  if($('.share-modal').length > 0){
    $('.share-modal').magnificPopup({
      type: 'inline',
      preloader: false,
      focus: false,
      modal: false
    });
  }
  if($('.menu-toggle').length > 0){
    $('.menu-toggle').click(function(e){
      var nav = $(this).parent().find('.nav');
      if (nav.hasClass('nav-open')){
        nav.removeClass('nav-open');
      }else{
        nav.addClass('nav-open');
      }
      menu_click_outside(nav);
      return false;
    });
    function disable_menu_toggle(element){
      while (element) {
        var _disabled = $(element).attr('disable-menu-toggle');
        if(_disabled || _disabled==''){
          console.log("menu toggle disabled.");
          return true
        }
        element = element.parentElement;
      }
      return false
    }
    function menu_click_outside(nav){
      var click_outside = function(e){
        if (event.target && disable_menu_toggle(event.target)){
          return false;
        }
        if (nav.hasClass('nav-open')){
          nav.removeClass('nav-open');
        }
        $(document).off({'click':click_outside});
        return false;
      }
      $(document).on('click', click_outside);
    }
    
  }
});