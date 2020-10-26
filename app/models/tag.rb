class Tag < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :maker
  belongs_to_active_hash :body_type

  has_many :car_tags
  has_many :cars, through: :car_tags
end
