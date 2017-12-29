$(document).on 'turbolinks:load', () ->
  $('.svg-convert').svgConvert()	
  $('body').on 'click', '#brg', (e) ->
  	debugger
	$('#Color1').css({ fill: "#f00" })
	$('#Color2').css({ fill: "#00f" })
	$('#Color2_1_').css({ fill: "#f00"})
