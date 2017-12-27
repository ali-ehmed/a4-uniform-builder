$(document).on 'turbolinks:load', () ->
  $('body').on 'click', '.selected-checbox', (e) ->
    sport_id  = $(this).data('sport')
    document.getElementById("redirect-request-#{sport_id}").submit();
    #star_count = $('a.fa-star').length
    #return window.location.href = window.location.href + "&q%5Buser_reviews_rating_eq="+star_count
