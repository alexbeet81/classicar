class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  geocoded_by :address

  after_validation :geocode, if: :will_save_change_to_address?

  validates :model, :seats, :year, :colour, :address, presence: true

  has_one_attached :photo
end
