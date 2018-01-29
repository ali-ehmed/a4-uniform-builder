#= require active_admin/base
$ ->
  $('#one_tile').hide()
  $('#two_tile').hide()
  $('#two_tile_th').hide()
  $('#one_tile_th').hide()
  $('#three_tile_th').show()
  $('#three_tile').show()

  logoValidPrefix = (value) ->
    logoLayerPrefix = 'LOGO_Color'

    if value.indexOf(logoLayerPrefix) == -1
      alert "The Prefix of SVG layer (#{value}) is not valid. Logo SVG layer prefix should be `#{logoLayerPrefix}` leading with ids (if multiple)"
      return false

    return true

  # aahmed: * Logo Upload Here *
  $('input#logo_image').on 'change', ->
    fileInput = $(this)
    file = this.files[0];
    fr = new FileReader();
    fr.onload = ->
      $.get fr.result, ((svg) ->
        validPrefix = true
        xmlDoc = $($.parseXML(svg))
        # **/ All Elems who have id attr. This depends on svg. Svg must have id with fill attr for color \**
        filledElems = xmlDoc.find('[id]')
        ids = filledElems.map(->
          $(@).attr('id')
        ).get()

        i = 0
        while i < ids.length
          validPrefix = logoValidPrefix(ids[i])
          return false unless validPrefix
          ++i

        if validPrefix
          $('#display_default_colors').empty()
          filledElems.map(->
            $('#display_default_colors').append(
              "<span style='background: #{$(@).attr('fill')}; padding: 4px 12px; margin-right: 4px;'></span>"
            )
          )
          $('#logo_default_colors').val(filledElems.map(->
            $(@).attr('fill')
          ).get().join(', ')) if filledElems.length > 0
          return
        else
          $('#logo_default_colors').val('')
          $('#display_default_colors').empty()
          fileInput.val('')
      ), 'text'

    fr.readAsDataURL(file);
  # aahmed: * Logo Upload Here *

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
