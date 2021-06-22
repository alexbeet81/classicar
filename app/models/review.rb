class Review < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :comment, presence: true
  validates :star, numericality: { greater_than: 0, less_than: 6 }
end
