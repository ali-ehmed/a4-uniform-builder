class GraphicsController < ApplicationController
  before_action :find_graphic, only: [:graphic_colors]


  def create
    @graphich = Graphic.create graphic_params
  end

  def assign_color
    current_user.update_attribute :graphic_color, params[:g_color]
  end
  def index
    @graphics = Graphic.where(category: params[:category])
  end

  def graphic_colors
    @model_name = 'Graphic'
    @graphic_layer_ids = @graphic.svg_default_layers.try(:split, ', ')
    @graphic_colors = {}
    begin
      @graphic_colors['Text Colors'] = @graphic.default_layers.select { |layer| layer.keys.first.include? 'GRAPHICS_Text' }
      @graphic_colors['Layer Colors'] = @graphic.default_layers.select { |layer| layer.keys.first.include? 'GRAPHICS_Color' }
    rescue StandardError
      @graphic_colors['Text Colors'] = []
      @graphic_colors['Layer Colors'] = []
    end

    render 'graphic_colors.js.erb'
  end

  def update

  end

  private

  def graphic_params
    params.require(:graphic).permit(:colour_codes, :image, :category, :price_id, :custom_fee, :custom_graphic, :method_id, :group, :graphic_type, :sport_id,:gender_id, :factory_graphic_code,:decoration_id,:placement_id,:layout_factory_code,style_methods: [], colors: [])
  end

  def find_graphic
    @graphic        = Graphic.find_by_id(params[:id])
    @colors         = Color.where(is_tile_one: true)
    @style          = Style.find_by_id(params[:style_id] || current_user.try(:style))
    @user_selected_colors = Color.find_by(id: current_user.color).try(:hex_code).try(:split, ',')
    @selected_colors =  begin
                          (@user_selected_colors.map(&:upcase) + @graphic.svg_default_colors.try(:split, ', ').map(&:upcase)).uniq
                        rescue StandardError
                          []
                        end
    @placement      = Placement.find_by_id(params[:placement_id] || current_user.try(:placement))
  end
end
