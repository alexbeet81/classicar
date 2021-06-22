class Review < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :comment, :star, presence: true
end
