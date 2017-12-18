class GraphicsController < ApplicationController
  def create
    @graphich = Graphic.create graphic_params
  end


  private
  def graphic_params
    params.require(:graphic).permit(:category, :group, :graphic_type, :sport_id,:gender_id,:size_id,:price_by_method, :price_to_factory, :factory_graphic_code,:decoration_id,:placement_id,:layout_factory_code, :image, :description, style_methods: [])
  end
end
