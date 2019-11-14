# frozen_string_literal: true

# Missing top-level class documentation comment.
class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  # When you delete a cocktail, you should delete associated doses (but not the ingredients as they can be linked to other cocktails).
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
end
