class Sport < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :sport_image, SportImageUploader

  has_many 	  :uniform_builders
  has_many 	  :colors
  has_many    :sport_categories
  has_many    :categories, through: :sport_categories

  has_many    :style_sports
  has_many    :styles, through: :style_sports

  validate    :validate_minimum_sport_image_size

  def validate_minimum_sport_image_size
    if self.id.nil? && sport_image.try(:path).present?
      image = MiniMagick::Image.open(sport_image.path)
      unless image[:width] >= 110 && image[:height] >= 145
        errors.add :sport_image, error: "should be 160x160px minimum!"
      end
    end
  end
end
