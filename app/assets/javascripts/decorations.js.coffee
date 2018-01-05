$ ->
  $('.panel-collapse').on 'show.bs.collapse', ->
    $(this).siblings('.panel-heading').addClass 'active'
    return
  $('.panel-collapse').on 'hide.bs.collapse', ->
    $(this).siblings('.panel-heading').removeClass 'active'
    return

  color_1         = $('#color_1')
  color_2         = $('#color_2')
  color_3         = $('#color_3')
  color1_tile1    = color_1.data('color1')
  color1_tile2    = color_2.data('color2')
  color1_tile3    = color_3.data('color3')

  if !color1_tile2 && !color1_tile3
    $('#FrontColor1').css fill: color1_tile1
    $('#BackColor1').css fill: color1_tile1

  if !color1_tile3
    # For Front
    $('#FrontColor1').css fill: color1_tile1
    $('#FrontColor2').css fill: color1_tile2

    # For Back
    $('#BackColor1').css fill: color1_tile1
    $('#BackColor2').css fill: color1_tile2



  if color1_tile1 && color1_tile2 && color1_tile3
    # For Front
    $('#FrontColor1').css fill: color1_tile1
    $('#FrontColor3').css fill: color1_tile2
    $('#FrontColor2').css fill: color1_tile3

    # For Back
    $('#BackColor1').css fill: color1_tile1
    $('#BackColor3').css fill: color1_tile2
    $('#BackColor2').css fill: color1_tile3
