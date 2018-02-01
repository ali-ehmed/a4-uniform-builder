class UpdateColorToUser
  constructor: (@$elm) ->
  @change: (elm) ->
    @$tile 	    = elm.data('tile')
    next = document.getElementById('next_btn')
    next_header = document.getElementById('next_btn_header')
    next.classList.remove("hide-next")
    next_header.classList.remove("hide-next")

    $.ajax
      type: 'PATCH'
      url: "/colors/#{@$tile}",
      data: {tile: @$tile}

$(document).on 'turbolinks:load', () ->
  $('body').on 'click', '#one_tile', (e) ->
    color     = $(this).data('color')
    tile 	    = $(this).data('tile')

    $('#FrontColor1').css fill: color
    $('#BackColor1').css fill: color
    UpdateColorToUser.change($(this))

  $('body').on 'click', '#two_tiles', (e) ->
    color1    = $(this).data('color1')
    color2    =  $(this).data('color2')
    tile 	    = $(this).data('tile')

    # For Front
    $('#FrontColor1').css fill: color1
    $('#FrontColor2').css fill: color2

    # For Back
    $('#BackColor1').css fill: color1
    $('#BackColor2').css fill: color2
    UpdateColorToUser.change($(this))


  $('body').on 'click', '#three_tiles', (e) ->
    color1    = $(this).data('color1')
    color2    = $(this).data('color2')
    color3 	  = $(this).data('color3')
    tile 	    = $(this).data('tile')

    # For Front
    $('#FrontColor1').css fill: color1
    $('#FrontColor3').css fill: color3
    $('#FrontColor2').css fill: color2

    # For Back
    $('#BackColor1').css fill: color1
    $('#BackColor3').css fill: color3
    $('#BackColor2').css fill: color2

    UpdateColorToUser.change($(this))
