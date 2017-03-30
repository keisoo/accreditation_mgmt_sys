$(document).on("turbolinks:load", function(){
  $("#is_personal").click(function(){
    if( $(this).is(":checked") ) {
      $(".Tokenize").addClass("hidden");
      $("#label_select_area").addClass("hidden");
    } else {
      $(".Tokenize").removeClass("hidden");
      $("#label_select_area").removeClass("hidden");
    }
  });
})
