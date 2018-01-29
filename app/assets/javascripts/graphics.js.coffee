# aahmed: ** Place Graphic SVG on Style (On Shirt), Header (Sidebar Header) and Preview Box (From where logo selection popup opens) **
updateSelectedGraphicOnPlacement = ->
  $('body').on  'click',  'a.select-populated-graphic', (e) ->
    e.preventDefault()
    svgPath         = $(this).data('image-path');
    placement       = $(this).data('placement');
    placement_pos   = $(this).data('placement-pos');
    object_id       = $(this).data('object');

    window.fetchSvg svgPath, (svg, layerIds) ->
      # Placement
      # Todo: Right Now specific to PL1 later will be dynamic
      updateFromElem = $('#PL1_Front_Logo')
      if updateFromElem.length
        window.setExistingPlacementAttrs(updateFromElem)

      svgPlacementOnStyle = $('#PL1')
      svgPlacementOnHeader = $('#header_img')

      svgPlacementOnStyle.html(svg)
      svgPlacementOnHeader.html(svg)

      window.placedSvgUpdatedAttributes(svgPlacementOnStyle, [['id', 'placed-graphic-svg-on-style']])
      window.placedSvgUpdatedAttributes(svgPlacementOnHeader, [['id', 'placed-graphic-svg-on-header']])

      document.getElementById('set_preview_graphic').src = svgPath;

      $.getScript("/graphics/graphic_colors?id=#{object_id}")