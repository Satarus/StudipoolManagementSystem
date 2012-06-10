// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function(){
    $('td[bookable*="true"]').css("border-color", "green");

    $("td").on("click", function(){
        place_nr = $(this).attr("working_place_nr");
        if(place_nr != null){
            window.location=("/working_place/" + place_nr)
        }
    });

    $("td").off("mouseenter");
    $("td").on("mouseenter", function(e){
        $("div.working_place_info").hide();
        place_nr = $(this).attr("working_place_nr");
        $("div.working_place_info[working_place_nr="+place_nr+"]").show()
    });

    $("td").off("mouseleave");
    $("td").on("mouseleave", function(e){
        $("div.working_place_info").hide();
    });
});
