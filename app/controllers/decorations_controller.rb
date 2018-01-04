class DecorationsController < ApplicationController
  before_action :style, only: [:index, :show]
  def index
    debugger
    @decorations = Decoration.all
  end
  private
  def style
    @style = Style.find_by_id(params[:style_id])
  end
end
