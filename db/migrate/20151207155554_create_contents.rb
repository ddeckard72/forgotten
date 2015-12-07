class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :location_id
      t.string :htmlfile

      t.timestamps null: false
    end
  end
end
