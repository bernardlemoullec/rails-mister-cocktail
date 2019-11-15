# frozen_string_literal: true

# Missing top-level class documentation comment.
class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
  has_one_attached :photo
end
