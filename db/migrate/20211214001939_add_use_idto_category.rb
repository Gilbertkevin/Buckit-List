class AddUseIdtoCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :user_id, :integer
    remove_column :items, :category_id
    add_column :images, :item_id, :integer
  end
end
