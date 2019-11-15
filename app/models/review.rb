# frozen_string_literal: true

# Missing top-level class documentation comment.
class Review < ApplicationRecord
  belongs_to :cocktail
  validates :content, presence: true
  validates :rating, inclusion: { in: 0..5 }
end
