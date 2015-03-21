class AddYearToMaps < ActiveRecord::Migration
  def up
  	add_column :foods, :years, :text
  end

  def down
  	remove_column :foods, :years
  end
end
