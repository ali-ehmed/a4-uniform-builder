class TextsController < ApplicationController
  def create
    @text   = Text.create text_params
  end


  private
  def text_params
    params.require(:text).permit(:category, :group, :text_type, :sport_id,:gender_id,:size_id,:price_by_method,:factory_graphic_code,:decoration_id,:placement_id,:layout_factory_code,:decsription, style_methods: [], fonts: [], colors: [])
  end
end
