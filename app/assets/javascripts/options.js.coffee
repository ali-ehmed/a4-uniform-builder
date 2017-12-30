$(document).on 'turbolinks:load', () ->
  $('.svg-convert').svgConvert()
  $('body').on 'click', '#redgreenblue', (e) ->
	layer1 = $('#Color1')
	$('#Color1').css fill: '#000000'
	$('#Color2_1_').css fill: '#000000'
	$('#Color2').css fill: '#000000'