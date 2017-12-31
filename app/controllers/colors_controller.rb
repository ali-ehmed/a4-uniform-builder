class ColorsController < ApplicationController
  private
  def color_params
    params.require(:color).permit(:colour_code, :color_type, :colour_descriptions, :md_no, :pms_no, :is_tile_one, :is_tile_two,
                                  :is_tile_three, :heat_transfer, :screen_print, :tackle_twill, :hex_code)
  end
end
