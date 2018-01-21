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
#    color = $('#color_selection').val();

  $('body').on  'click',  '.graphic-image', ->
    graphic         = $(this).data('image');
    placement       = $(this).data('placement');
    placement_pos   = $(this).data('placement-pos');
    object_id       = $(this).data('object');
    model           = $(this).data('model');
    document.getElementById('PL2_Front_Logo').href.animVal    = graphic;
    document.getElementById('PL2_Front_Logo').href.baseVal    = graphic;
    document.getElementById('set_image').src                  = graphic;
    document.getElementById('header_img').src                 = graphic;
    document.getElementById('sidebar-4').classList.add("hide-sidebar")
    if model == "logo"
      $.getScript("/logos/logo_colors?id=#{object_id}")
    else
      $.getScript("/graphics/graphic_colors?id=#{object_id}")
    return

  $('body').on  'click',  '#select_color', ->
    color = $(this).data('color');
    document.getElementById('color_selection').style.backgroundColor    = color;
    document.getElementById('PL2_Front_Logo').style.fill                = color;
    document.getElementById('sidebar-5').classList.add("hide-sidebar")

#    selected_graphic = $('select#text_image option:selected').text();
#    document.getElementById('PL2_Front_Logo').href.animVal = selected_graphic;
#    document.getElementById('PL2_Front_Logo').href.baseVal = selected_graphic;

  $('body').on 'change', '#img_inpput', ->
    input = this
    placemnet = $('#img_inpput').data('placement')
    output  = document.getElementById('set_image')
    output1 = document.getElementById('header_img')
    output2 = document.getElementById(placemnet)
    output.src = URL.createObjectURL(event.target.files[0])
    output1.src = URL.createObjectURL(event.target.files[0])
    output2.href.baseVal = URL.createObjectURL(event.target.files[0])
    output2.src = URL.createObjectURL(event.target.files[0])
    return

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
