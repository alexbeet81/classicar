class Car < ApplicationRecord
  belongs_to :User

  validates :model, :seats, :year, :color, :address, :image_one, presence: true
  has_one_attached :photo
end
