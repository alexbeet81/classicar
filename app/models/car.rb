class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  geocoded_by :address

  after_validation :geocode, if: :will_save_change_to_address?

  validates :model, :seats, :year, :colour, :address, :description, :city, presence: true

  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_model_year_colour_and_address,
    against: [ :model, :year, :colour, :address],
    using: {
      tsearch: { prefix: true }
    }
end
