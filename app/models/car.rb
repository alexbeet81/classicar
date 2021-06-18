class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :model, :seats, :year, :colour, :address, presence: true

  has_one_attached :photo
end
