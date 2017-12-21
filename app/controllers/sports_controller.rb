class SportsController < ApplicationController
  def create
    @sport = Sport.create sports_params
  end
  def index
    @sports = Sport.all
  end
  private
  def sports_params
    params.require(:sport).permit(:category, :image,:available_till, :items_in_stock, :acs_code)
  end
end
