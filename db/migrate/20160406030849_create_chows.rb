class CreateChows < ActiveRecord::Migration
  def change
    create_table :chows do |t|
      t.text :name
      
      t.string :serving_size
      t.string :calories
      t.string :sat_fat
      t.string :sodium
      t.string :carbs
      t.string :sugar
      t.string :fiber
      t.string :protein
      t.string :whole_grain
      
      t.string :ca_fe_k_at_20_percent
      t.string :gluten_free
      t.string :organic
      
      t.text :tag
      t.string :upc
      t.text :food_type
      
      t.timestamps null: false
    end
  end
end
