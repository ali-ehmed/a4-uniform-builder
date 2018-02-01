module Graphicable
  extend ActiveSupport::Concern

  included do
    validates_presence_of :default_layers
  end

  def svg_default_colors
    default_layers.map(&:values).flatten.try(:join, ', ')
  rescue StandardError
    default_layers
  end

  def svg_default_layers
    default_layers.map(&:keys).flatten.try(:join, ', ')
  rescue StandardError
    nil
  end

  def default_layers
    if read_attribute(:default_layers)
      JSON.parse(read_attribute(:default_layers), quirks_mode: true)
    end
  rescue StandardError
    read_attribute(:default_layers)
  end
end