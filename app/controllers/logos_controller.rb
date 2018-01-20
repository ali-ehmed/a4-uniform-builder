class LogosController < ApplicationController
  def create
    debugger
    @logo = Logo.create logo_params
  end

  def update

  end

  def index
    @logos = Logo.where(category: params[:category])
  end

  private
  def logo_params
    params.require(:graphic).permit(:image, :category, :placement_id, :selected_colour, :gender_id,
    :factory_graphic_code, :layout_factory_code).merge!({style_id: params[:style_id]})
  end
end
