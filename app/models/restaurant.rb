class Restaurant < ApplicationRecord
  validates :title, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :food_type, presence: true

  has_many :reviews
end
