class AddShoppingToInventories < ActiveRecord::Migration[7.0]
  def change
    add_column :inventories, :shopping, :boolean
  end
end
