class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user

  validates :start_time, :end_time, :cancelled, presence: true
  validates :car, :user, presence: true
end
