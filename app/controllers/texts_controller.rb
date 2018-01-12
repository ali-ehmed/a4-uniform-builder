class TextsController < ApplicationController
  def create
    @text   = Text.create text_params
  end


  private
  def text_params
    params.require(:text).permit(:factory_graphic_code, :decoration_id, :placement_id, :factory_graphic_code, :layout_factory_code,
                                 :price_id, :style_method_id, colors: [], layout_ids: [])
  end
end
