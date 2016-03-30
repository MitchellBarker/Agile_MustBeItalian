class CreateHealthConcerns < ActiveRecord::Migration
  def change
    create_table :health_concerns do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
