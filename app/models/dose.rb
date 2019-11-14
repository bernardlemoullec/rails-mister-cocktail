# frozen_string_literal: true

# Missing top-level class documentation comment.
class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates_uniqueness_of :cocktail_id, scope: :ingredient_id
end
