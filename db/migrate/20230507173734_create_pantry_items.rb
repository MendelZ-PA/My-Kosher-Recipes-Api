class CreatePantryItems < ActiveRecord::Migration[7.0]
  def change
    create_table :pantry_items do |t|
      t.string :measurement
      t.string :name
      t.integer :user_id
      t.boolean :is_kosher

      t.timestamps
    end
  end
end
