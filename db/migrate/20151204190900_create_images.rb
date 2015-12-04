class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :filename
      t.string :caption
      t.string :orientation
      t.integer :height
      t.integer :width
      t.string :tag
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
