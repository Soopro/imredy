$(document).ready(function($){
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
});