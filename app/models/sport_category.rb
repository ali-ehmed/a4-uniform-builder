class SportCategory < ApplicationRecord
  belongs_to  :sport
  belongs_to  :category
end
