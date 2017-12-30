$(document).on 'turbolinks:load', () ->
  $('body').on 'click', '.selected-checbox', (e) ->
    sport_id  = $(this).data('sport')
    document.getElementById("redirect-request-#{sport_id}").submit();
    #star_count = $('a.fa-star').length
    #return window.location.href = window.location.href + "&q%5Buser_reviews_rating_eq="+star_count
#  $('body').on 'click', '#one_tile', (e) ->
#    color  = $(this).data('color')
#    $('#Color1').css fill: color

  $('body').on 'click', '#two_tile', (e) ->
    debugger
    color1  = $(this).data('color-1')
    color2  = $(this).data('color-2')
    # For Front
    $('#FrontColor1').css fill: color1
    $('#FrontColor2_1_').css fill: color2
    $('#FrontColor2').css fill: color2

    # For Back
    $('#BackColor1').css fill: color1
    $('#BackColor2').css fill: color2
    $('#BackColor2_1_').css fill: color2

