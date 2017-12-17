class StyleController < ApplicationController
  def create
    @style = Style.create style_options_params
  end
  private
  def style_options_params
    params.require(:style).permit(:description, :name, :category, :colour, :image, color_ids: [], size_ids: [],placement_ids: [],decoration_ids:[])
  end
end
