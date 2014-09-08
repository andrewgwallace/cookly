class Cookbook < ActiveRecord::Base
  has_many :recipes
  belongs_to :chef
end
