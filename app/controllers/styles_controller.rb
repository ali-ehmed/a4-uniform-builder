class StylesController < ApplicationController
  before_action :update_user, only: [:index]
  def create
    @style = Style.create style_options_params
  end
  def index
    @styles = Style.all
  end
  private
  def style_options_params
    params.require(:style).permit(:description, :name, :category, :colour, :image, colors: [], sizes: [], placements: [], decorations:[])
  end

  def update_user
    current_user.update_attribute :category, params[:category]
  end
end
