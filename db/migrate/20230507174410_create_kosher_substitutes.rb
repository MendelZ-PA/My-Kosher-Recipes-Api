class CreateKosherSubstitutes < ActiveRecord::Migration[7.0]
  def change
    create_table :kosher_substitutes do |t|
      t.string :name
      t.integer :ingredient_id
      t.string :brand
      t.string :url

      t.timestamps
    end
  end
end
