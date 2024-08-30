class Plant < ApplicationRecord
  belongs_to :user
  has_many :garden_plants
  has_many :gardens, through: :garden_plants
end
