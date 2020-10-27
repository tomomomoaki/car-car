class Tag < ApplicationRecord

  validates :name, uniqueness: true

  has_many :car_tags
  has_many :cars, through: :car_tags
end
