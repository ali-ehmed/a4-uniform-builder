class StyleController < ApplicationController
  def create
    @style = Style.create style_options_params
  end
  private
  def style_options_params
    params.require(:style).permit(:description, :name, :category, :colour, :image)
  end
end
