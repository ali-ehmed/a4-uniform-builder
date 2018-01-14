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

  $('.panel-collapse').on 'show.bs.collapse', ->
    $(this).siblings('.panel-heading').addClass 'active'
    return
  $('.panel-collapse').on 'hide.bs.collapse', ->
    $(this).siblings('.panel-heading').removeClass 'active'
    return

  $('body').on 'change', '#style_method_code', (e) ->
    $.getScript("/decorations/#{$(this).val()}/form")


  $('body').on 'input', '#text_team_name', ->
    text_value  = $('#text_team_name').val()

    document.getElementById('PL10_Text_Back').textContent = text_value;
    document.getElementById('PL1_Text_Front').textContent = text_value;

  $('body').on 'input', '#text_team_number', ->
    text_value  = $('#text_team_number').val()

    document.getElementById('PL10_Text_Back').textContent = text_value;
    document.getElementById('PL1_Text_Front').textContent = text_value;

  $('body').on 'change', '#text_size_id',->
    font_size   = $('select#text_size_id option:selected').text();
    $('#PL1_Text_Front').css({'fontSize': font_size+"pt"});
    $('#PL10_Text_Back').css({'fontSize': font_size+"pt"});

  $('body').on 'change', '#text_font_style', ->
    font_style   = $('select#text_font_style option:selected').text();
    $('#PL1_Text_Front').css({'font-style': font_style});
    $('#PL10_Text_Back').css({'font-style': font_style});

  $('body').on 'click', "#text_is_stroke", ->
    if $('#text_is_stroke').is(":checked") == true
      $('.form-group').removeClass('hide-font')
  $('body').on 'change', '#text_outilne_colour', ->
    font_stroke   = $('select#text_outilne_colour option:selected').text();
    $('#PL1_Text_Front').css({'stroke': font_stroke});
    $('#PL10_Text_Back').css({'stroke': font_stroke});


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
