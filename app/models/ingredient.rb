class Ingredient < ActiveRecord::Base
  has_many :recipes, through: :portions
  has_many :portions
end
