class DecorationsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :style, only: [:index]

  def create
    head :ok
  end

  def index
    @colors             = current_user.try(:colors)
    @color = (@colors.try(:last) || @user_color).try(:hex_code).try(:split, ',')
    @decorations        = Decoration.all
    @placements         = Placement.all
    @texts              = Text.all
    @graphics           = Graphic.all
  end

  def apply
    @object = params[:model_name].capitalize.constantize.order(id: :desc)
  end

  def show
    @object         = params[:model_name].capitalize.constantize.order(id: :desc)
    @style_methods  = StyleMethod.all.collect{ |s_m| [s_m.code,s_m.id] }
    @model          = params[:model_name]
    @team_name      = params[:team_name]
    @team_name.nil? && current_user.update_attribute(:decoration_type, params[:model_name]) || current_user.update_attribute(:decoration_type, "team_name")
    @partial        = params[:partial]
  end

  def form
    @team_name      = params[:team_name]
    @style_methods  = StyleMethod.where(code: params[:id])
    @partial        = params[:partial]
    @placement      = Placement.find_by_id(params[:placement_id] || current_user.try(:placement))
    @style          = Style.find_by_id(params[:style_id] || current_user.try(:style))

    # @partial values => ['graphic', 'logo', 'team_name', 'numbering']
    case @partial
      when 'graphic'
        @multiline_graphics   = Graphic.multiline
        @single_line_graphics = Graphic.single_line
      when 'logo'
        @logos = Logo.all.order('category')
      else
        @texts = Text.all
        @sizes = Size.all
    end

    render partial: "#{@partial}.js.erb"
  end

  def graphic_selection; end

  private

  def style
    @style = Style.find_by_id(params[:style_id] || current_user.style)
    @user_color = Color.find_by_id(current_user.color)
    @placement  = Placement.find_by_id(params[:placement_id] || current_user.try(:placement))
    if (params[:placement_id] || current_user.placement_pos).present?
      current_user.update_attributes(placement_pos: @placement.try(:code), placement: @placement.id)
      @style.placements += [@placement]
    end
  end

  def decoration_params; end
end
