class Addpreviewimage < ActiveRecord::Migration
  def change
  	add_column :locations, :preview_image, :string
  end
end
