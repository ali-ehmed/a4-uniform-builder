module DecorationsHelper
  def logo_size
    [
        70,
        100,
        130
    ]
  end

  def render_color_item(index, color, layer_id)
    html = %Q{
      <li class="form-group">
        <div class="graphic-area">
          <div class="color-selection">
            <div id="color_selection" class="color-box default-color" style="background:#{color};" data-layer-id="#{layer_id}"></div>
            <div class="color-number">Color #{index + 1}</div>
            <div class="color-name">
              <!-- Color will be here from Colors Table Later -->
            </div>
          </div>
        </div>
      </li>
    }

    html.html_safe
  end
end