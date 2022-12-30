class RemoveNameFromCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :category
  end
end
