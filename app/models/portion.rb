class Portion < ActiveRecord::Base
  belongs_to :recipes
  belongs_to :ingredient
end
