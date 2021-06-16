class Car < ApplicationRecord
  belongs_to :User

  validates :model, :seats, :year, :colour, :address, :image_one, presence: true
end
