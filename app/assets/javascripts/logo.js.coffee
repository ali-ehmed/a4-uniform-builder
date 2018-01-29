window.checkAndUpdateMirrorRotationValues = ->

# aahmed: -> Mirror View
mirrorView = ->
  $('body').on  'change',  '#mirror-view', ->
    styleSvg = $("#placed-logo-svg-on-style")
    headerSvg = $("#placed-logo-svg-on-header")

    styleSvgSelectedAttributes = $('[data-logo-svg-transform-value]')

    preSetMirrorValue = styleSvgSelectedAttributes.attr('data-mirror-value')
    preSetRotationValue = styleSvgSelectedAttributes.attr('data-rotation-value')

    input = $(this)
    viewBoxWidth = styleSvg.prop('viewBox').animVal.width

    if input.is(':checked')
      styleSvgTransformValue = "scale(-1,1) translate(#{-viewBoxWidth}, 0)"
      styleSvgSelectedAttributes.attr('data-mirror-value', styleSvgTransformValue)

      styleSvgTransformValue += (" #{preSetRotationValue}" || "")


      styleSvg.find("g:not([id])").first().attr('transform', styleSvgTransformValue)

      # Header SVG donot requires Rotation
      headerSvg.attr('transform', 'scale(-1,1)')
    else
      styleSvgSelectedAttributes.removeAttr('data-mirror-value')

      styleSvgTransformValue = (preSetRotationValue || "")

      styleSvg.find("g:not([id])").first().attr('transform', styleSvgTransformValue)

      headerSvg.removeAttr('transform')
# aahmed: -> Mirror View


# aahmed: -> Logo Rotation
# Logo Rotattion is in views/decorations/_object_colors.html.erb
# aahmed: -> Logo Rotation

# aahmed: -> Logo Sizes
logoSizes = ->
  $('body').on 'change', '#select-size', (e) ->
    e.preventDefault()
    mainSvg = $('#placed-logo-svg-on-style')
    maxSize = $(this).attr("data-max-size")
    size = parseFloat($(this).val())

    width = parseFloat(mainSvg.attr('width').slice(0,-2))
    height = parseFloat(mainSvg.attr('height').slice(0,-2))

    mainSvg.attr('data-original-width', width) if mainSvg.attr('data-original-width') == undefined
    mainSvg.attr('data-original-height', height) if mainSvg.attr('data-original-height') == undefined

    if mainSvg.attr('data-original-width') and mainSvg.attr('data-original-height')
      width = parseFloat(mainSvg.attr('data-original-width'))
      height = parseFloat(mainSvg.attr('data-original-height'))

    if !mainSvg.attr('data-size') || parseFloat(mainSvg.attr('data-size')) != size
      mainSvg.attr('data-size', size)
      mainSvg.attr('width', "#{((width * size) / 100)}px")
      mainSvg.attr('height', "#{((height * size) / 100)}px")


# aahmed: -> Logo Sizes

# aahmed: ** Logo Upload From here **
uploadLogo = ->
  $('body').on 'keypress', '#logo-desc', ->
    if($("#img_inpput").val().length > 0)
      $('#submit_btn').prop('disabled', false)

  $('body').on 'change', '#img_inpput', ->
    if($("#logo-desc").val().length > 0)
      $('#submit_btn').prop('disabled', false)

  $('body').on 'click', '#submit_btn', ->
    input = $(this)
    fileInput = $("#img_inpput")
    logoDescInput = $("#logo-desc")

    if logoDescInput.val().length == 0
      input.prop('disabled', true)
      return false
    else
      input.prop('disabled', false)
      $("#logo-desc-content").show()
      $("#logo-desc-content").find('.desc').text(logoDescInput.val())

    file = fileInput[0].files[0]

    if fileInput.val().length > 0
      input.prop('disabled', false)
      fr = new FileReader();
      fr.onload = ->
        document.getElementById('set_preview_logo').src = fr.result;

        window.fetchSvg fr.result, (svg, layerIds) ->
          logoPlacement(svg)

          # When selecting logo from Upload, we need to clear the changes for Selecting Logo from Logo Selection
          $("[data-logo-colors]").empty()

      fr.readAsDataURL(file);

      # Clearing Upload fields
      fileInput.val('')
      logoDescInput.val('')
    else
      input.prop('disabled', true)
      return false
# aahmed: ** Logo Upload End here **

# aahmed: ** Place Logo SVG on Style (On Shirt), Header (Sidebar Header) and Preview Box (From where logo selection popup opens) **
updateSelectedLogoOnPlacement = ->
  $('body').on  'click',  'a.select-populated-logo', (e) ->
    e.preventDefault()
    $(this).closest('ul.logo-list').find('a.active').removeClass("active")
    $(this).addClass("active")
    svgPath         = $(this).data('image-path');
    placement       = $(this).data('placement');
    placement_pos   = $(this).data('placement-pos');
    object_id       = $(this).data('object');

    window.fetchSvg svgPath, (svg, layerIds) ->
      logoPlacement(svg)

      document.getElementById('set_preview_logo').src = svgPath;

      $.get("/logos/logo_colors", { id: object_id, logo_layer_ids: layerIds }, ->
        if $("#mirror-view").length
          $("#mirror-view").prop('checked', false)
          $("#mirror-view").val('0')

        console.log('Success')

        $("[data-uploaded-logo]").empty()
        $("#logo-desc-content").hide()
      )

# aahmed: ** Place Logo SVG on Style (On Shirt), Header (Sidebar Header) and Preview Box (From where logo selection popup opens) **

# aahmed: ** Select Logo Color from Selection Popup and apply on Style and Header Logo only
selectLogoColor = ->
  $('body').on  'click',  '.select_logo_color', ->
    selectedLogoLayer = $('[data-select-logo-layer]').attr('id')
    color = $(this).data('color');

    $(".default-logo-color[data-logo-layer-id='#{selectedLogoLayer}']").css('backgroundColor', color)

    styleSvg = $("#placed-logo-svg-on-style")
    headerSvg = $("#placed-logo-svg-on-header")

    styleSvg.find("##{selectedLogoLayer}").css fill: color
    headerSvg.find("##{selectedLogoLayer}").css fill: color

    document.getElementById('sidebar-5').classList.add("hide-sidebar")
# aahmed: ** Select Logo Color from Selection Popup and apply on Style and Header Logo only




# ***** Private Methods *****

logoPlacement = (svg) ->
  # Placement
  # Todo: Right Now specific to PL2 later will be dynamic
  updateFromElem = $('#PL2_Front_Logo')
  if updateFromElem.length
    window.setExistingPlacementAttrs(updateFromElem)

  svgPlacementOnStyle = $('#PL2')
  svgPlacementOnHeader = $('#header_img')

  setTimeout(->
    svgPlacementOnStyle.html(svg)
    svgPlacementOnHeader.html(svg)

    window.placedSvgUpdatedAttributes(svgPlacementOnStyle, [['id', 'placed-logo-svg-on-style'], ['style', 'overflow: visible;']])
    window.placedSvgUpdatedAttributes(svgPlacementOnHeader, [['id', 'placed-logo-svg-on-header'], ['style', 'overflow: visible;']])
  , 100)

truncateSelectedValues = (transforProperyValues, resetElem) ->
  values = transforProperyValues.split(' ').filter((v) -> return v != '')
  transforProperyValues.split(' ').filter((v) -> return v != '').forEach (value, index) ->
    console.log(index)
    console.log(value)
    console.log(value.indexOf('scale'))
    console.log(value.indexOf('translate'))
    if value.indexOf('scale') || value.indexOf('translate')
      values.splice($.inArray(value, values), 1)

  resetElem.attr('transform', values.join(', ')) if values != undefined && values.length

# ***** Private Methods *****
$ ->
  mirrorView()
  logoSizes()
  uploadLogo()
  updateSelectedLogoOnPlacement()
  selectLogoColor()
# ******/ Logo Ends JS \******