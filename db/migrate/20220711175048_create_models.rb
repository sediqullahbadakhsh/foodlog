class CreateModels < ActiveRecord::Migration[7.0]
  def change
    create_table :models do |t|
      t.string :Entry
      t.string :meal_type
      t.integer :calories
      t.integer :proteins
      t.integer :carbohydrates
      t.integer :fats

      t.timestamps
    end
  end
end
