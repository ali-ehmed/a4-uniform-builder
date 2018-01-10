class DecorationsController < ApplicationController
  before_action :style, only: [:index, :show]
  def index
    @color = current_user.try(:colors).try(:last).try(:hex_code).split(',') if current_user.try(:colors).try(:last).present?
    @decorations        = Decoration.all
    @placements         = Placement.all
    @decoration_packges = Decoration.all
    @texts              = Text.all
    @graphics           = Graphic.all
  end
  private
  def style
    @style = Style.find_by_id(params[:style_id])
  end
end
