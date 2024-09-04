class Plant < ApplicationRecord
  has_many :garden_plants
  has_many :gardens, through: :garden_plants

  validates :name, presence: true, uniqueness: true
  validates :scientific_name, presence: true, uniqueness: true
  validates :plant_type, presence: true

  scope :edible_plants, -> { where(edible: true) }
  scope :safe_for_pets, -> { where(pet_safe: true) }
end
