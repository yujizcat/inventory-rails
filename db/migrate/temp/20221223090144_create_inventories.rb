class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.string :item
      t.integer :units
      t.integer :price
      t.string :category
      t.boolean :sale
      t.string :description

      t.timestamps
    end
  end
end
