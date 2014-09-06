class CreatePortions < ActiveRecord::Migration
  def change
    create_table :portions do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.integer :quantity
      t.string :unit

      t.timestamps
    end
  end
end
