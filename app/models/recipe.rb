class Recipe < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :ingredients, presence: true
  validates :instructions, presence: true
end
