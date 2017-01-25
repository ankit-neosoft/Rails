$(document).ready(function(){
  $("div[id^='cart-item-count]'").blur(function(){
  $("form.form_class").submit();
  });
  });






$(document).ready(function(){
$("#1").removeClass('in')
});

// $(document).ready(function(){
// $(".category").onClickremoveClass('in')
// });

$(document).ready(function(){
$('.alert, .alert-success').fadeOut(4000)
});

$(document).ready(function(){
$('.cart_quantity_up').onClick(function(){
  $('.alert, .alert-success').alert('abc');
});
});


$(document).ready(function() {
    $(".cart_quantity_up").click( alert('abc')
    });
});