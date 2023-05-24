# frozen_string_literal: true

# This is a comment
class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian],
                                    message: '%<value> is not a valid restaurant category.' }
  has_many :reviews, dependent: :destroy
end
