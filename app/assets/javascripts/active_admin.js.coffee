#= require active_admin/base
$ ->
  $('#one_tile').hide()
  $('#two_tile').hide()
  $('#two_tile_th').hide()
  $('#one_tile_th').hide()
  $('#three_tile_th').show()
  $('#three_tile').show()

  svgValidPrefix = (value, prefix, prefixType) ->
    if prefixType == 'Graphic'
      if value.indexOf(prefix[0]) == -1 and value.indexOf(prefix[1]) == -1
        alert "The Prefix of SVG layer (#{value}) is not valid. SVG layer prefix should be in `#{prefix}` leading with ids (if multiple)"
        return false
    else
      if value.indexOf(prefix[0]) == -1
        alert "The Prefix of SVG layer (#{value}) is not valid. SVG layer prefix should be `#{prefix[0]}` leading with ids (if multiple)"
        return false

    return true

  fetchSvgAndValidate = (svgPath, prefix, prefixType, callback) ->
    $.get svgPath, ((svg) ->
      validPrefix = true
      xmlDoc = $($.parseXML(svg))
      # **/ All Elems who have id attr. This depends on svg. Svg must have id with fill attr for color \**
      filledElems = xmlDoc.find('[id]')

      ids = filledElems.map(->
        $(@).attr('id')
      ).get()

      if prefixType == 'Graphic'
        ids = jQuery.grep ids, (value) ->
          return value.indexOf('GRAPHICS_') == 0

        filledElems = jQuery.grep filledElems, (value) ->
          return $(value).attr('id').indexOf('GRAPHICS_') == 0

      layers = []

      if ids.length == 0
        alert "There are no Valid IDs in SVG. The prefix of IDs should be in `LOGO_, GRAPHICS_`"
        return callback(false, layers, filledElems)

      i = 0
      while i < ids.length
        validPrefix = svgValidPrefix(ids[i], prefix, prefixType)

        if validPrefix
          layers.push({
            "#{ids[i]}":  $(filledElems[i]).attr('fill')
          })
        else
          return callback(validPrefix, layers, filledElems)
        ++i

      callback(validPrefix, layers, filledElems)
    ), 'text'

  # aahmed: * Graphic Upload Here *
  $("input#graphic_image").on 'change', ->
    graphicLayerPrefix = ['GRAPHICS_Text', 'GRAPHICS_Color']

    fileInput = $(this)
    file = this.files[0];
    fr = new FileReader();
    fr.onload = ->
      fetchSvgAndValidate fr.result, graphicLayerPrefix, 'Graphic', (isValidPrefix, layers, filledElems) ->
        if isValidPrefix
          $('#display_graphic_default_colors').empty()
          filledElems.map((v)->
            $('#display_graphic_default_colors').append(
              "<span style='background: #{$(v).attr('fill')}; padding: 4px 12px; margin-right: 4px;'></span>"
            )
          )
          $('#graphic_default_layers').val(JSON.stringify(layers)) if layers.length > 0
          return
        else
          $('#graphic_default_layers').val('')
          $('#display_graphic_default_colors').empty()
          fileInput.val('')

    fr.readAsDataURL(file);
  # aahmed: * Graphic Upload Here *

  # aahmed: * Logo Upload Here *
  $('input#logo_image').on 'change', ->
    logoLayerPrefix = ['LOGO_Color']
    fileInput = $(this)
    file = this.files[0];
    fr = new FileReader();
    fr.onload = ->
      fetchSvgAndValidate fr.result, logoLayerPrefix, 'Logo', (isValidPrefix, layers, filledElems) ->
        if isValidPrefix
          $('#display_logo_default_colors').empty()
          filledElems.map(->
            $('#display_logo_default_colors').append(
              "<span style='background: #{$(@).attr('fill')}; padding: 4px 12px; margin-right: 4px;'></span>"
            )
          )
          $('#logo_default_layers').val(JSON.stringify(layers)) if layers.length > 0
          return
        else
          $('#logo_default_layers').val('')
          $('#display_logo_default_colors').empty()
          fileInput.val('')

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
