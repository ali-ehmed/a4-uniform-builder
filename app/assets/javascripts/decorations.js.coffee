$ ->
  $('body').on 'click', '#numbering',->
    $(this).removeClass('btn-default');
    $(this).addClass('btn-primary');
    $('#graphics').removeClass('btn-primary');
    $('#team_name').removeClass('btn-primary');
    $('#logo').removeClass('btn-primary');
    $('#graphics').addClass('btn-default');
    $('#team_name').addClass('btn-default');
    $('#logo').addClass('btn-default');

  $('body').on 'click', '#team_name',->
    $(this).removeClass('btn-default');
    $('#graphics').removeClass('btn-primary');
    $('#numbering').removeClass('btn-primary');
    $('#logo').removeClass('btn-primary');
    $(this).addClass('btn-primary');
    $('#graphics').addClass('btn-default');
    $('#numbering').addClass('btn-default');
    $('#logo').addClass('btn-default');

  $('body').on 'click', '#graphics',->
    $(this).removeClass('btn-default');
    $('#team_name').removeClass('btn-primary');
    $('#numbering').removeClass('btn-primary');
    $('#logo').removeClass('btn-primary');
    $(this).addClass('btn-primary');
    $('#team_name').addClass('btn-default');
    $('#numbering').addClass('btn-default');
    $('#logo').addClass('btn-default');

  $('body').on 'click', '#logo',->
    $(this).removeClass('btn-default');
    $('#team_name').removeClass('btn-primary');
    $('#numbering').removeClass('btn-primary');
    $('#graphics').removeClass('btn-primary');
    $(this).addClass('btn-primary');
    $('#team_name').addClass('btn-default');
    $('#numbering').addClass('btn-default');
    $('#graphics').addClass('btn-default');

  $('.panel-collapse').on 'show.bs.collapse', ->
    $(this).siblings('.panel-heading').addClass 'active'
    return
  $('.panel-collapse').on 'hide.bs.collapse', ->
    $(this).siblings('.panel-heading').removeClass 'active'
    return

  $('body').on 'change', '#style_method_code', (e) ->
    team=$(this).data('team')
    partial=$(this).data('partial')
    $.getScript("/decorations/#{$(this).val()}/form?team_name=#{team}&&partial=#{partial}")


  $('body').on 'input', '#text_team_name', ->
    text_value  = $('#text_team_name').val()

#    document.getElementById('PL10_Text_Back').textContent = text_value;
    document.getElementById('PL1_Text_Front').textContent = text_value;

  $('body').on 'input', '#text_team_number', ->
    text_value  = $('#text_team_number').val()

    document.getElementById('PL10_Text_Back').textContent = text_value;
#    document.getElementById('PL1_Text_Front').textContent = text_value;

  $('body').on 'change', '#text_size_id',->
    size = $(this).data('size');
    font_size   = $('select#text_size_id option:selected').text();
    if size == "front"
      $('#PL1_Text_Front').css({'fontSize': font_size+"pt"});
    if size == "back"
      $('#PL10_Text_Back').css({'fontSize': font_size+"pt"});

  $('body').on 'change', '#text_font_style', ->
    font = $(this).data('font');
    font_style   = $('select#text_font_style option:selected').text();
    if font == "front"
      $('#PL1_Text_Front').css({'font-style': font_style});
    if font == "back"
      $('#PL10_Text_Back').css({'font-style': font_style});

  $('body').on 'click', "#text_is_stroke", ->
    if $('#text_is_stroke').is(":checked") == true
      $('.form-group').removeClass('hide-font')

  $('body').on 'change', '#text_outilne_colour', ->
    outline = $(this).data("outline")
    font_stroke   = $('select#text_outilne_colour option:selected').text();
    if outline == "front"
      $('#PL1_Text_Front').css({'stroke': font_stroke});
    if outline == "back"
      $('#PL10_Text_Back').css({'stroke': font_stroke});

  $('body').on 'change', '#text_stroke_text_width', ->
    stroke_width   = $('select#text_stroke_text_width option:selected').text();
    stroke = $(this).data('stroke')
    if stroke == "front"
      $('#PL1_Text_Front').css({'stroke-width': stroke_width});
    if stroke == "back"
      $('#PL10_Text_Back').css({'stroke-width': stroke_width});

  $('body').on 'change', '#text_decoration_color', ->
    d_color = $(this).data('color')
    color   = $('select#text_decoration_color option:selected').text();
    if d_color == "front"
     $('#PL1_Text_Front').css({'fill': color});
    if d_color == "back"
      $('#PL10_Text_Back').css({'fill': color});

  $('body').on 'change', '#text_font_family', ->
    t_family = $(this).data('family')
    family   = $('select#text_font_family option:selected').text();
    if t_family == 'front'
      $('#PL1_Text_Front').css({'font-family': family});
    if t_family == "back"
     $('#PL10_Text_Back').css({'font-family': family});


  $('#select-decoration').on 'click', ->
    text = document.getElementById('PL110_Text_Back').textContent;
    text1 = document.getElementById('PL12_Text_Back').textContent;
    document.getElementById('PL1_Text_Front').textContent = text;
    document.getElementById('PL10_Text_Back').textContent = text;
    document.getElementById('PL16_Text_Back').textContent = text1;
    document.getElementById('PL6_Text_Front').textContent = text1;

  $('.decoration-package').on 'click', ->

    decoration = $(this).data("show")
    if decoration == 2
      document.getElementById('sidebar-1').classList.remove("display-sidebar")
      document.getElementById('sidebar-1').classList.add("hide-sidebar")
      document.getElementById("sidebar-2").classList.remove("hide-sidebar")
      document.getElementById("sidebar-2").classList.add("display-sidebar")
    if decoration == 3
      document.getElementById("sidebar-2").classList.add("hide-sidebar")
      document.getElementById("sidebar-2").classList.remove("display-sidebar")
      document.getElementById("sidebar-3").classList.remove("hide-sidebar")
      document.getElementById("sidebar-3").classList.add("display-sidebar")
    return false

  $('.select-placement').on 'click', ->
    placement_code = $(this).data('placement')
    $(placement_code).css fill: "#282828"
    return

  $('body').on  'change',  '#graphic_image', ->
    selected_graphic = $('select#graphic_image option:selected').text();
    document.getElementById('PL2_Front_Logo').href.animVal = selected_graphic;
    document.getElementById('PL2_Front_Logo').href.baseVal = selected_graphic;
    document.getElementById('header_img').scr = selected_graphic;


  $('body').on  'click',  '#graphic_selection', ->
    style_id  = $(this).data('style');
    placement = $(this).data('placement')
    #document.getElementById(placement).href.animVal    = graphic;
    #document.getElementById(placement).href.baseVal    = graphic;
    document.getElementById('sidebar-4').classList.remove("hide-sidebar")

  $('body').on  'click',  '#color_selection', ->
    document.getElementById('sidebar-5').classList.remove("hide-sidebar")
    $('[data-select-logo-layer]').attr('id', $(this).attr('data-logo-layer-id'))
#    color = $('#color_selection').val();

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

  $('body').on  'change',  '#mirror-view', ->
    styleSvg = $("#placed-svg-on-style")
    styleSvgSelectedAttributes = $('[data-style-logo-selected-attributes]')
    headerSvg = $("#placed-svg-on-header")
    input = $(this)
    viewBoxWidth = styleSvg.prop('viewBox').animVal.width

    if input.val() == "0"
      input.val("1")
      styleSvgTransformValue = "scale(-1,1) translate(#{-viewBoxWidth},0)"
      styleSvg.find('g').attr('transform', "#{styleSvgTransformValue}")

      styleSvgSelectedAttributes.attr('data-values', styleSvgTransformValue)
      headerSvg.attr('transform', 'scale(-1,1)')
    else
      input.val("0")

#      transformPropertyValue = styleSvg.find('g').attr('transform')
#      if transformPropertyValue
#        truncateSelectedValues(transformPropertyValue, styleSvg.find('g'))
#
#      if styleSvgSelectedAttributes.attr('data-values')
#        truncateSelectedValues(styleSvgSelectedAttributes.attr('data-values'), styleSvgSelectedAttributes)
      styleSvgTransformValue = "scale(1,1) translate(0,0)"
      styleSvgSelectedAttributes.attr('data-values', styleSvgTransformValue)
      styleSvg.find('g').attr('transform', "#{styleSvgTransformValue}")
      headerSvg.attr('transform', styleSvgTransformValue)

  $('body').on 'click', '.select-size', (e) ->
    e.preventDefault()
    mainSvg = $('#placed-svg-on-style')
    maxSize = $(this).attr("data-max-size")
    size = parseFloat($(this).attr("data-size"))

    width = parseFloat(mainSvg.attr('width').slice(0,-2))
    height = parseFloat(mainSvg.attr('height').slice(0,-2))

    if !mainSvg.attr('data-size') || parseFloat(mainSvg.attr('data-size')) != size
      mainSvg.attr('data-size', size)
      if size < width
        mainSvg.attr('width', "#{(width - size)}px")
        mainSvg.attr('height', "#{(height - size)}px")
      else
        mainSvg.attr('width', "#{(width + size)}px")
        mainSvg.attr('height', "#{(height + size)}px")

  placedSvgUpdateAttributes = (placementElem, attrs) ->
    updateFromElem = $('[data-placement-attribute]')
    placedSvg = placementElem.find('svg')

    placedSvg.attr('width', updateFromElem.attr('width'))
    placedSvg.attr('height', updateFromElem.attr('height'))
    placedSvg.attr('x', updateFromElem.attr('x'))
    placedSvg.attr('y', updateFromElem.attr('y'))

    if attrs.length
      attrs.forEach (value) ->
        placedSvg.attr(value[0], value[1])

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
      $("#logo-desc-content").find('p').text(logoDescInput.val())

    file = fileInput[0].files[0]

    if fileInput.val().length > 0
      input.prop('disabled', false)
      fr = new FileReader();
      fr.onload = ->
        document.getElementById('set_image').src = fr.result;
        $.get fr.result, ((svg) ->
          xmlDoc = $($.parseXML(svg))

          updateFromElem = $('#PL2_Front_Logo')
          if updateFromElem.length
            $('[data-placement-attribute]').attr('width', updateFromElem.attr('width'))
            $('[data-placement-attribute]').attr('height', updateFromElem.attr('height'))
            $('[data-placement-attribute]').attr('x', updateFromElem.attr('x'))
            $('[data-placement-attribute]').attr('y', updateFromElem.attr('y'))

          svgPlacementOnStyle = $('#PL2')
          svgPlacementOnHeader = $('#header_img')

          svgPlacementOnStyle.html(svg)
          svgPlacementOnHeader.html(svg)

          placedSvgUpdateAttributes(svgPlacementOnStyle, [['id', 'placed-svg-on-style']])
          placedSvgUpdateAttributes(svgPlacementOnHeader, [['id', 'placed-svg-on-header']])

          document.getElementById('sidebar-4').classList.add("hide-sidebar")
          $("[data-logo-colors]").empty()
        ), 'text'

      fr.readAsDataURL(file);

      fileInput.val('')
      logoDescInput.val('')
    else
      input.prop('disabled', true)
      return false
#    placemnet = $('#img_inpput').data('placement')
#    output  = document.getElementById('set_image')
#    output1 = document.getElementById('header_img')
#    output2 = document.getElementById(placemnet)
#    output.src = URL.createObjectURL(event.target.files[0])
#    output1.src = URL.createObjectURL(event.target.files[0])
#    output2.href.baseVal = URL.createObjectURL(event.target.files[0])
#    output2.src = URL.createObjectURL(event.target.files[0])
#    return

  $('body').on  'click',  '.graphic-image', ->
    graphic         = $(this).data('image');
    placement       = $(this).data('placement');
    placement_pos   = $(this).data('placement-pos');
    object_id       = $(this).data('object');
    model           = $(this).data('model');

    $.get graphic, ((svg) ->
      xmlDoc = $($.parseXML(svg))
      layerIds =  xmlDoc.find('path').map(-> $(this).attr('id')).get()
      $('[data-logo-layers]').attr('id', layerIds.join(', '))

      updateFromElem = $('#PL2_Front_Logo')
      if updateFromElem.length
        $('[data-placement-attribute]').attr('width', updateFromElem.attr('width'))
        $('[data-placement-attribute]').attr('height', updateFromElem.attr('height'))
        $('[data-placement-attribute]').attr('x', updateFromElem.attr('x'))
        $('[data-placement-attribute]').attr('y', updateFromElem.attr('y'))

      svgPlacementOnStyle = $('#PL2')
      svgPlacementOnHeader = $('#header_img')

      svgPlacementOnStyle.html(svg)
      svgPlacementOnHeader.html(svg)

      placedSvgUpdateAttributes(svgPlacementOnStyle, [['id', 'placed-svg-on-style']])
      placedSvgUpdateAttributes(svgPlacementOnHeader, [['id', 'placed-svg-on-header']])

      document.getElementById('set_image').src = graphic;
      document.getElementById('sidebar-4').classList.add("hide-sidebar")

      if model == "logo"
        $.get("/logos/logo_colors", { id: object_id, logo_layer_ids: layerIds }, ->
          if $("#mirror-view").length
            $("#mirror-view").prop('checked', false)
            $("#mirror-view").val('0')
          console.log('Success')

          $("[data-uploaded-logo]").empty()
          $("#logo-desc-content").hide()
        )
      else
        $.getScript("/graphics/graphic_colors?id=#{object_id}")
      return
    ), 'text'

  $('body').on  'click',  '.select_logo_color', ->
    selectedLogoLayer = $('[data-select-logo-layer]').attr('id')
    color = $(this).data('color');

    $(".default-logo-color[data-logo-layer-id='#{selectedLogoLayer}']").css('backgroundColor', color)

    styleSvg = $("#placed-svg-on-style")
    headerSvg = $("#placed-svg-on-header")

    styleSvg.find("##{selectedLogoLayer}").css fill: color
    headerSvg.find("##{selectedLogoLayer}").css fill: color

    document.getElementById('sidebar-5').classList.add("hide-sidebar")

#    selected_graphic = $('select#text_image option:selected').text();
#    document.getElementById('PL2_Front_Logo').href.animVal = selected_graphic;
#    document.getElementById('PL2_Front_Logo').href.baseVal = selected_graphic;

  $('body').on 'click', '#cancel_btn', ->
    document.getElementById('sidebar-4').classList.add("hide-sidebar")
    document.getElementById('sidebar-5').classList.add("hide-sidebar")

  timer = null

  searchImage = ->
    category = $('#search_image').val()
    if $('#search_image').data('graphic') == true
      $.getScript("/graphics?category=#{category}")
    else
      $.getScript("/logos?category=#{category}")
    document.getElementById('sidebar-4').classList.remove("hide-sidebar")
    return

  searchCategory = ->
    category   = $('select#serach_category option:selected').text();
    $.getScript("/logos?category=#{category}")
    document.getElementById('sidebar-4').classList.remove("hide-sidebar")
    return

  $('body').on 'keydown', '#search_image', ->
    clearTimeout timer
    timer = setTimeout(searchImage, 1100)

  $('body').on 'change', '#serach_category', ->
    clearTimeout timer
    timer = setTimeout(searchCategory, 1100)


#  $('body').on 'click', '#logo_form', ->
#    document.getElementById("logo-form").submit();
