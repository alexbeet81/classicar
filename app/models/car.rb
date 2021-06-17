class Car < ApplicationRecord
  belongs_to :user

  validates :model, :seats, :year, :colour, :address, :image_one, presence: true

  has_one_attached :photo
end
