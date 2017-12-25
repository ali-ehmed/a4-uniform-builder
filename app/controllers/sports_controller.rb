class SportsController < ApplicationController
  def create
    @sport = Sport.create sports_params
  end
  def index
    @sports = Sport.all
  end
  private
  def sports_params
    params.require(:sport).permit(:sport_name, :acs_sales_category_code, :acs_sales_category_description,:marketing_category, :image, :sport_image, :is_selected)
  end
end
