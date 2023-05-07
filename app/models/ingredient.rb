class Ingredient < ApplicationRecord
  belongs_to :recipe 
  has_many :kosher_substitutes
end
