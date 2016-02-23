$(document).ready(function() {

  $("#newSuperhero").on("click", function(event){
    event.preventDefault();

    var destination = $(this).attr("href");
    var $clickedLink = $(this);
    $.ajax({
      url: destination,
      success: function(response) {
        $clickedLink.after(response);
      }
    })
  });


  $(".container").on("submit", "form", function(event){
    event.preventDefault();

    var formData = $(this).serialize();
    var url = $(this).attr("action");
    var method = $(this).attr("method");

    var request = $.ajax({
      url: url,
      method: method,
      data: formData,
      success: function(response) {
        $(".superheros > ul").prepend(response);
      },
      error: function(response) {
        console.log(response.responseText);
      }
    })

  });
});
