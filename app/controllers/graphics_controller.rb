class GraphicsController < ApplicationController
  def create
    @graphich = Graphic.create graphic_params
  end


  private
  def graphic_params
    params.require(:graphic).permit(:category, :price_id, :custom_fee, :custom_graphic, :method_id, :group, :graphic_type, :sport_id,:gender_id, :factory_graphic_code,:decoration_id,:placement_id,:layout_factory_code,
                                    :image, style_methods: [], color_ids: [])
  end
end
