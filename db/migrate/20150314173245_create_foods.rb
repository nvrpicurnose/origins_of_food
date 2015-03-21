class CreateFoods < ActiveRecord::Migration
  def up
    create_table :foods do |t|
      t.string :name
      t.string :sciname
      t.string :origin
      t.string :classification
      t.text :description

      t.timestamps null: false
    end
  end

  def down
    drop_table :foods
  end
end
