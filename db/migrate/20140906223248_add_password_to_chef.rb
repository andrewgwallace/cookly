class AddPasswordToChef < ActiveRecord::Migration
  def change
    add_column :chefs, :hashed_password, :string
  end
end
