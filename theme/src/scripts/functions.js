$(document).ready(function($){
  if($('.img-popup').length > 0){
    $('.img-popup').magnificPopup({
      type:'image',
      gallery: {enabled:true},
    });
  }
});