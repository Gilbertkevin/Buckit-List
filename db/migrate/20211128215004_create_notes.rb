class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :description
      t.integer :item_id

      t.timestamps
    end
  end
end
