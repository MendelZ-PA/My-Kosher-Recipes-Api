class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :measurement
      t.string :name
      t.integer :recipe_id
      t.boolean :is_kosher

      t.timestamps
    end
  end
end
