class StylesController < ApplicationController
  before_action :update_user, only: [:index]
  def create
    @style = Style.create style_options_params
  end
  def index
    @style_category = params[:category]  
    @styles         = style.where(style_category: @style_category)
  end
  private
  def style_options_params
    params.require(:style).permit(:style_code,:acs_style,:gender_id,:style_category,:color_description,:category_id,
                                  :style_features,:front,:back, :thumbnail,color_ids: [], sizes: [],placements: [],decorations:[], sport_ids: [])
  end

  def update_user
    params[:category] && current_user.update_attribute(:category, params[:category])
  end

  def style
    Sport.find_by_id(current_user.sport).styles
  end
end
