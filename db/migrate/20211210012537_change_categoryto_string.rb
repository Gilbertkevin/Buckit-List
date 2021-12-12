class ChangeCategorytoString < ActiveRecord::Migration[6.1]
  def change
    change_column :items, :category_id, :string
  end
end
