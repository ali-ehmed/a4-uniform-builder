# aahmed: ** Place Graphic SVG on Style (On Shirt), Header (Sidebar Header) and Preview Box (From where logo selection popup opens) **
updateSelectedGraphicOnPlacement = ->
  $('body').on  'click',  '.select-populated-graphic', (e) ->
    $(this).closest('ul.logo-list').find('a.active').removeClass("active")
    $(this).parent().addClass("active")

    svgPath         = $(this).data('image-path');
    placement       = $(this).data('placement');
    placement_pos   = $(this).data('placement-pos');
    object_id       = $(this).data('object');

    window.fetchSvg svgPath, (svg, layerIds) ->
      $('[data-graphic-layers]').attr('id', layerIds.join(', '))
      # Placement
      # Todo: Right Now specific to PL1 later will be dynamic
      updateFromElem = $('#PL1_Front_Graphic')
      if updateFromElem.length
        window.setExistingPlacementAttrs(updateFromElem, $('[data-graphic-placement-attribute]'))
      else



      svgPlacementOnStyle = $('#PL1')
      svgPlacementOnHeader = $('#header_img')

      svgPlacementOnStyle.find('svg').replaceWith(svg)
      svgPlacementOnHeader.find('svg').replaceWith(svg)

      window.placedSvgUpdatedAttributes(svgPlacementOnStyle, $('[data-graphic-placement-attribute]'), [['id', 'placed-graphic-svg-on-style'], ['style', 'overflow: visible;']])
      window.placedSvgUpdatedAttributes(svgPlacementOnHeader, $('[data-graphic-placement-attribute]'), [['id', 'placed-graphic-svg-on-header'], ['style', 'overflow: visible;']])

      document.getElementById('set_preview_graphic').src = svgPath;

      $.get("/graphics/graphic_colors", { id: object_id, logo_layer_ids: layerIds }, ->
        filterGraphicsTextLayers = layerIds.filter (value) ->
          return value.indexOf("GRAPHICS_Text") == 0

        if filterGraphicsTextLayers.length
          filterGraphicsTextLayers.forEach (layerId) ->
            input = $("#graphic_text_for_#{layerId}")
            input.val($("##{layerId}").text()) if input.length

        console.log('Success')
      )

# aahmed: ** Select Graphic Color from Selection Popup and apply on Style and Header Logo only
selectGraphicColor = ->
  $('body').on  'click',  '.select_graphic_color', ->
    selectedLogoLayer = $('[data-selected-layer]').attr('id')
    color = $(this).data('color');

    $(".default-color[data-layer-id='#{selectedLogoLayer}']").css('backgroundColor', color)

    styleSvg = $("#placed-graphic-svg-on-style")
    headerSvg = $("#placed-graphic-svg-on-header")

    styleSvg.find("##{selectedLogoLayer}").css fill: color
    headerSvg.find("##{selectedLogoLayer}").css fill: color

    document.getElementById('sidebar-5').classList.add("hide-sidebar")
# aahmed: ** Select Graphic Color from Selection Popup and apply on Style and Header Logo only

window.updateGraphicText = (elem) ->
  layerId = $(elem).attr('data-layer-id')
  graphicTextInSvg = $("##{layerId}")
  console.log $(elem).val()
  console.log graphicTextInSvg
  graphicTextInSvg.text($(elem).val())


$(document).on "turbolinks:load", ->
  updateSelectedGraphicOnPlacement()
  selectGraphicColor()