class Addtagline < ActiveRecord::Migration
  def change
  		add_column :locations, :tagline, :string
  end
end
