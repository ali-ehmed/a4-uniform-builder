$(document).on 'turbolinks:load', () ->
  $('body').on 'click', '.selected-checbox', (e) ->
    document.getElementById('redirect-request').submit();
    #star_count = $('a.fa-star').length
    #return window.location.href = window.location.href + "&q%5Buser_reviews_rating_eq="+star_count
