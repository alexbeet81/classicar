class Car < ApplicationRecord
  belongs_to :user

  validates :model, :seats, :year, :colour, :address, presence: true

  has_one_attached :photo
end
