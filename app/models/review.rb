class Review < ApplicationRecord
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: (0..5) }
  validates :rating, numericality: true
  # validates :number, :inclusion => 1..5
  belongs_to :restaurant
end
