class StyleController < ApplicationController
  def create
    @style = Style.create style_options_params
  end
  def index
    @styles = Style.all
  end
  private
  def style_options_params
    params.require(:style).permit(:description, :name, :category, :colour, :image, colors: [], sizes: [],placements: [],decorations:[])
  end
end
