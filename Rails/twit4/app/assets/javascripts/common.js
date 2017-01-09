
$(document).ready(function(){
  // 


$('#tweet-textarea').focus(function(){
    $('#submit-hidden').show();
  });

$('#tweet-textarea').focus(function(){
    $('#close-button').show();
  });

$('.close').click(function(){
$('#submit-hidden').hide();
});

$('.close').click(function(){
$('.close').hide();
});


// $('#submit-hidden').fadeOut(4000);

  // $('#tweet-textarea').blur(function(){
  //   $('#submit-hidden').addClass('hidden');
  // });

$(".alert" ).fadeOut(4000);



  $(document).ready(function(){
  $('#close-form').click(function(){
  $("div[id^='task-form-'").hide();
  });
  });

  $('#hide').click(function(){
   $("div[id^='task-form-']").addClass('hidden');
  });
});


// $(document).ready(function(){
//   $
// });
/*
$(document).ready(function(){
  $('#tweet-textarea').focus(function(){
    $("#submit-hidden").show();
  });
});
*/

/*

$(document).ready(function(){
  $('#container').click(function(){
   $('#task-form-174').removeClass('hidden');
  });
});

*/
