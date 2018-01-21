class GraphicsController < ApplicationController
  def create
    debugger
    @graphich = Graphic.create graphic_params
  end

  def assign_color
    current_user.update_attribute :graphic_color, params[:g_color]
  end
  def index
    @graphics = Graphic.where(category: params[:category])
  end

  private
  def graphic_params
    params.require(:graphic).permit(:colour_codes, :image, :category, :price_id, :custom_fee, :custom_graphic, :method_id, :group, :graphic_type, :sport_id,:gender_id, :factory_graphic_code,:decoration_id,:placement_id,:layout_factory_code,style_methods: [], colors: [])
  end
end
