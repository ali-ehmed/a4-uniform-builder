class DesignsController < ApplicationController
  before_action :update_user, only: [:index]

  def create
    @design = Design.create design_params
  end

  def index
    @designs = Design.all
  end

  private
  def design_params
    params.require(:design).permit(:description, :name, :category, :colour, :image)
  end

  def update_user
    current_user.update_attribute :style, params[:style]
  end
end
