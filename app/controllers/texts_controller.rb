class TextsController < ApplicationController
  def create
    @text   = Text.create text_params
  end

  def index
  end


  private
  def text_params
    params.require(:text).permit(:team_name, :size_id, :font_id, :is_stroke, :font_style, :outilne_colour).merge!({style_id: current_user.try(:style)})
  end
end
