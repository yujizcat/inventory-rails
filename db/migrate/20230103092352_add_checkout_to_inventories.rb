class AddCheckoutToInventories < ActiveRecord::Migration[7.0]
  def change
    add_column :inventories, :checkout, :integer
  end
end
