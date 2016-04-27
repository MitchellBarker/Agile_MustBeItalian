class CreateChows < ActiveRecord::Migration
  def change
    create_table :chows do |t|
      t.text :name
      
      t.float :serving_size
      t.float :calories
      t.float :sat_fat
      t.float :sodium
      t.float :carbs
      t.float :sugar
      t.float :fiber
      t.float :protein
      t.float :whole_grain
      
      t.boolean :ca_fe_k_at_20_percent
      t.boolean :gluten_free
      t.boolean :organic
      
      t.text :tag
      t.string :upc
      t.text :food_type
      
      t.timestamps null: false
    end
  end
end
