$(document).ready(function() {
  $("#rentals_tab").click(function(){
    $(".reservations").hide();
    $(".account").hide();
    $(".rentals").show();
    $("li#reservations_tab").removeClass("active");
    $("li#account_tab").removeClass("active");
    $("li#rentals_tab").addClass("active");
  });
  $("#reservations_tab").click(function(){
    $(".rentals").hide();
    $(".account").hide();
    $(".reservations").show();
    $("li#rentals_tab").removeClass("active");
    $("li#account_tab").removeClass("active");
    $("li#reservations_tab").addClass("active");
  });
  $("#account_tab").click(function(){
    $(".reservations").hide();
    $(".rentals").hide();
    $(".account").show();
    $("li#rentals_tab").removeClass("active");
    $("li#reservations_tab").removeClass("active");
    $("li#account_tab").addClass("active");
  });

});
