# frozen_string_literal: true

# Missing top-level class documentation comment.
class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  # You cannot delete an ingredient if it used by at least one cocktail.
  validates :name, uniqueness: true, presence: true
end
