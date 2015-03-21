class AddMapColumnsToFoods < ActiveRecord::Migration
  def up
  	add_attachment :foods, :map1
  	add_attachment :foods, :map2
  	add_attachment :foods, :map3
  	add_attachment :foods, :map4
  	add_attachment :foods, :map5
  end

  def down
  	remove_attachment :foods, :map5
  	remove_attachment :foods, :map4
  	remove_attachment :foods, :map3
  	remove_attachment :foods, :map2
  	remove_attachment :foods, :map1
  end
end
