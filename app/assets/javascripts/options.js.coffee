$(document).on 'turbolinks:load', () ->
  $('body').on 'click', '#one_tile', (e) ->
    color  = $(this).data('color')
    $('#FrontColor1').css fill: color
    $('#BackColor1').css fill: color

  $('body').on 'click', '#two_tiles', (e) ->
    color1  = $(this).data('color1')
    color2  =  $(this).data('color2')

    # For Front
    $('#FrontColor1').css fill: color1
    $('#FrontColor2').css fill: color2

    # For Back
    $('#BackColor1').css fill: color1
    $('#BackColor2').css fill: color2


  $('body').on 'click', '#three_tiles', (e) ->
    color1  = $(this).data('color1')
    color2  = $(this).data('color2')
    color3 	= $(this).data('color3')

    # For Front
    $('#FrontColor1').css fill: color1
    $('#FrontColor2').css fill: color2
    $('#FrontColor3').css fill: color3

    # For Back
    $('#BackColor1').css fill: color1
    $('#BackColor2').css fill: color2
    $('#BackColor3').css fill: color3
