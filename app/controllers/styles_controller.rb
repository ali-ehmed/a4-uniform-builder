class StylesController < ApplicationController
  def create
    @style = Style.create style_options_params
  end
  def index
    @style_category = params[:category]  
    @styles         = Style.all
  end
  private
  def style_options_params
    params.require(:style).permit(:style_code,:acs_style,:sport_id,:gender_id,:style_category,:color_description,:category_id,
    :style_features,:front,:back, :thumbnail,colors: [], sizes: [],placements: [],decorations:[])
  end  
end
