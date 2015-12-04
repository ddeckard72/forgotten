class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :location
      t.boolean :include
      t.string :country
      t.string :state
      t.string :city
      t.integer :zipcode

      t.timestamps null: false
    end
  end
end
