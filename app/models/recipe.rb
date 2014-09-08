class Recipe < ActiveRecord::Base
  belongs_to :cookbooks
  has_many :ingredients, through: :portions
  has_many :portions

  # takes a quantity and ingredient and adds portion to recipe
  def add_portion(quantity, unit_name, ingredient_name)
    #
    ingredient = Ingredient.find_by_name(ingredient_name)

    # if ingredient is found...
    if ingredient
      # get this instance of recipe's own portions
      self.portions << Portion.create({
        quantity: quantity,
        unit: unit_name,
        ingredient: ingredient
        })
    else
      # shows this in server log
      puts "Failed to create recipe! No ingredient with name #{ingredient_name}"
      nil
    end
  end


end
