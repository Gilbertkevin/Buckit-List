class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :item_title
      t.integer :category_id

      t.timestamps
    end
  end
end
