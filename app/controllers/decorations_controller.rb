class DecorationsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :style, only: [:index]

  def create
    head :ok
  end
  def index
    @colors             = current_user.try(:colors)
    @color = (@colors.try(:last) || @user_color).try(:hex_code).split(',')
    @decorations        = Decoration.all
    @placements         = Placement.all
    @decoration_packges = Decoration.all
    @texts              = Text.all
    @graphics           = Graphic.all
  end

  def apply
    @object = params[:model_name].capitalize.constantize.order(id: :desc)
  end
  def show
    @object         = params[:model_name].capitalize.constantize.order(id: :desc)
    @style_methods  = StyleMethod.all.collect{|s_m| [s_m.code,s_m.id]}
    @model          = params[:model_name]
    @team_name      = params[:team_name]
    @team_name.nil? && current_user.update_attribute(:decoration_type, params[:model_name]) || current_user.update_attribute(:decoration_type, "team_name")
    @partial        = params[:partial]
  end

  def form
    @team_name      = params[:team_name]
    @style_methods  = StyleMethod.where(code: params[:id])
    @texts          = Text.all
    @partial        = params[:partial]
    @graphics       = Graphic.all
    @colors         = Color.where(is_tile_one: true)
    @partial == "graphic" && (@object=Graphic.all) && render(partial: "graphic.js.erb" )
    @partial == "numbering" && render("form.js.erb" )
    @partial == "team_name" && render(partial: "team_name.js.erb")
    @partial == "logo" && (@object=Logo.all) && render(partial: "logo.js.erb")
  end

  def graphic_selection
  end
  private
  def style
    @style = Style.find_by_id(params[:style_id])
    @user_color = Color.find_by_id(current_user.color)
    params[:placement_id].present? &&
        current_user.update_attribute(:placement_pos, Placement.find_by_id(params[:placement_id]).try(:code))
  end
end
