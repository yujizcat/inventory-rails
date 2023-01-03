class AddBoughtToInventories < ActiveRecord::Migration[7.0]
  def change
    add_column :inventories, :bought, :boolean
  end
end
