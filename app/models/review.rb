class Review < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :content, presence: true, length: { minimum: 5 }
end
