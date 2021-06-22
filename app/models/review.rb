class Review < ApplicationRecord
  belongs_to :user
  belongs_to :card

  validates :comment, :star, presence: true
end
