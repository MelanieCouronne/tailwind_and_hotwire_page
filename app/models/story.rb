class Story < ApplicationRecord
  validates :universe_max_age, :universe_min_age, :universe_name, :description, :title, :cloudinary_key, presence: true
  validates :universe_max_age, :universe_min_age, numericality: { only_integer: true, greater_than: 7, less_than: 14 }
end
