$ ->
  $('.panel-collapse').on 'show.bs.collapse', ->
    $(this).siblings('.panel-heading').addClass 'active'
    return
  $('.panel-collapse').on 'hide.bs.collapse', ->
    $(this).siblings('.panel-heading').removeClass 'active'
    return
  return

#  color1    = $(this).data('color1')
#  color2    = $(this).data('color2')
#  color3 	  = $(this).data('color3')
#
#  if !color2 && !color2
#    $('#FrontColor1').css fill: color
#    $('#BackColor1').css fill: color
#
#  if !color3
#    # For Front
#    $('#FrontColor1').css fill: color1
#    $('#FrontColor2').css fill: color2
#
#    # For Back
#    $('#BackColor1').css fill: color1
#    $('#BackColor2').css fill: color2
#    UpdateColorToUser.change($(this))
#
#
#
#  if color1 && color2 && color3
#    # For Front
#    $('#FrontColor1').css fill: color1
#    $('#FrontColor3').css fill: color3
#    $('#FrontColor2').css fill: color2
#
#    # For Back
#    $('#BackColor1').css fill: color1
#    $('#BackColor3').css fill: color3
#    $('#BackColor2').css fill: color2
