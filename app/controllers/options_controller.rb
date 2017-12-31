class OptionsController < ApplicationController
  before_action :update_user, only: [:index]
  def create

  end
  def index
    @tile_1 = @style.try(:colors).where(is_tile_one:    true)
    @tile_2 = @style.try(:colors).where(is_tile_two:    true)
    @tile_3 = @style.try(:colors).where(is_tile_three:  true)
  end
  private
  def update_user
    params[:style]  && current_user.update_attribute(:style, params[:style])    && (@style = Style.find_by_id(params[:style]))
    params[:design] && current_user.update_attribute(:design, params[:design])  && (@style = Design.find_by_id(params[:design]))
  end
end
