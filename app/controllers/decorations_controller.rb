class DecorationsController < ApplicationController
  before_action :style, only: [:index, :show]
  def index
    @decorations = Decoration.all
  end
  private
  def style
    @style = Style.find_by_id(params[:style_id])
    @color = current_user.try(:colors).try(:last).try(:hex_code).split(',')
  end
end
