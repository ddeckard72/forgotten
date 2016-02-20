class Addcontinent < ActiveRecord::Migration
  def change
  		add_column :locations, :continent, :string
  end
end
