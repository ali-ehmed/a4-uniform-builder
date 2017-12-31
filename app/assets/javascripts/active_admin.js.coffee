#= require active_admin/base
$ ->
  $('#one_tile').hide()
  $('#two_tile').hide()
  $('#two_tile_th').hide()
  $('#one_tile_th').hide()
  $('#three_tile_th').show()
  $('#three_tile').show()
  $('body').on 'change', "#style_color_tiles", (e) ->
    selected_tile = $("#style_color_tiles option:selected").text()
    if selected_tile == "1 Tile"
      $('#two_tile').hide()
      $('#three_tile').hide()
      $('#two_tile_th').hide()
      $('#three_tile_th').hide()
      $('#one_tile_th').show()
      $('#one_tile').show()
    else if selected_tile == "2 Tiles"
      $('#one_tile').hide()
      $('#three_tile').hide()
      $('#one_tile_th').hide()
      $('#three_tile_th').hide()
      $('#two_tile_th').show()
      $('#two_tile').show()
    else if selected_tile == "3 Tiles"
      $('#one_tile').hide()
      $('#two_tile').hide()
      $('#two_tile_th').hide()
      $('#one_tile_th').hide()
      $('#three_tile_th').show()
      $('#three_tile').show()
