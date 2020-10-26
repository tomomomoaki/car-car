class Car < ApplicationRecord

  validates :title, presence: true
  validates :text, presence: true

  belongs_to :user
  has_many :car_tags
  has_many :tags, through: :car_tags
  has_one_attached :image
end
