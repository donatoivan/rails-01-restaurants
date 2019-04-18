class Restaurant < ApplicationRecord
  validates :title, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :food_type, presence: true

  has_many :reviews

  def next
    self.class.where("created_at > ?", created_at).order(created_at: :asc).first
  end
  
  def previous
    self.class.where("created_at < ?", created_at).order(created_at: :asc).last
  end
end
