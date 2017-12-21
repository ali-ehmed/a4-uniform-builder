class DesignController < ApplicationController
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
end
