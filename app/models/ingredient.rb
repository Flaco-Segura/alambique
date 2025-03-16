class Ingredient < ApplicationRecord::Base
  has_many :purchases
  has_many :ingredients_recipes
  has_many :recipes, through: :ingredients_recipes
  has_one :stock
end