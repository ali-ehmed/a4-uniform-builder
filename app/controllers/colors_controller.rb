class ColorsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :color, only: [:update, :show]
  def update
    current_user.colors.delete_all
    @color.update_attribute :user_id, current_user.id
    current_user.update_attribute :color, @color.try(:id)
  end

  private
  def color_params
    params.require(:color).permit(:colour_code, :color_type, :colour_descriptions, :md_no, :pms_no, :is_tile_one, :is_tile_two,
                                  :is_tile_three, :heat_transfer, :screen_print, :tackle_twill, :hex_code, :user_id)
  end
  def color
    @color = Color.find_by_id(params[:id])
  end
end
