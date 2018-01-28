class LogosController < ApplicationController
  before_action :find_logo, only: [:logo_colors]
  def create
    @logo = Logo.create logo_params
  end

  def update
  end

  def index
    @logos = Logo.where(category: params[:category])
  end

  def logo_colors
    # @logo_colors = Color.where(is_tile_one: true)#@logo.colors
    @logo_layer_ids = params[:logo_layer_ids].try(:split, ', ').try(:flatten)
    @logo_colors = @logo.default_colors.try(:split, ', ')#@logo.colors
    render "logo_colors.js.erb"
  end

  private

  def logo_params
    params.require(:graphic).permit(:image, :category, :placement_id, :selected_colour, :gender_id,
    :factory_graphic_code, :layout_factory_code).merge!({style_id: params[:style_id]})
  end

  def find_logo
    @logo           = Logo.find_by_id(params[:id])
    @colors         = Color.where(is_tile_one: true)
    @style          = Style.find_by_id(params[:style_id] || current_user.try(:style))

    @user_selected_colors = Color.find_by(id: current_user.color).try(:hex_code).try(:split, ',')
    @selected_colors= (@user_selected_colors + @logo.default_colors.try(:split, ', ')).uniq

    @placement      = Placement.find_by_id(params[:placement_id] || current_user.try(:placement))
  end
end
