class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :headline
      t.string :summary
      t.string :url
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
