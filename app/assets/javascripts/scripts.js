$(document).ready(function() {
  $("#rentals_tab").click(function(){
    $(".reservations").hide();
    $(".rentals").show();
    $("li#reservations_tab").removeClass("active");
    $("li#rentals_tab").addClass("active");
  });
  $("#reservations_tab").click(function(){
    $(".rentals").hide();
    $(".reservations").show();
    $("li#rentals_tab").removeClass("active");
    $("li#reservations_tab").addClass("active");
  });
});
