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
#  color_1         = $('#color_1')
#  color_2         = $('#color_2')
#  color_3         = $('#color_3')
#  color1_tile1    = color_1.data('color1')
#  color1_tile2    = color_2.data('color2')
#  color1_tile3    = color_3.data('color3')
#
#  if !color1_tile2 && !color1_tile3
#    $('#FrontColor1').css fill: color1_tile1
#    $('#BackColor1').css fill: color1_tile1
#
#  if !color1_tile3
#    # For Front
#    $('#FrontColor1').css fill: color1_tile1
#    $('#FrontColor2').css fill: color1_tile2
#
#    # For Back
#    $('#BackColor1').css fill: color1_tile1
#    $('#BackColor2').css fill: color1_tile2
#
#
#
#  if color1_tile1 && color1_tile2 && color1_tile3
#    # For Front
#    $('#FrontColor1').css fill: color1_tile1
#    $('#FrontColor3').css fill: color1_tile2
#    $('#FrontColor2').css fill: color1_tile3
#
#    # For Back
#    $('#BackColor1').css fill: color1_tile1
#    $('#BackColor3').css fill: color1_tile2
#    $('#BackColor2').css fill: color1_tile3
