class Review < ApplicationRecord
  belongs_to :restaurant

  RATINGS = %w(1 2 3 4 5)
  validates :content, presence: true, length: { minimum: 3 }
  validates :rating, presence: true, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
