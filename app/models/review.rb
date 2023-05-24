# frozen_string_literal: true

# This is a comment
class Review < ApplicationRecord
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, in: (0..5) }
  belongs_to :restaurant
end
