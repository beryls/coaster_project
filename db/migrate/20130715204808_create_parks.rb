class CreateParks < ActiveRecord::Migration
  def up
    create_table :parks do |t|
      t.string :name
      t.string :city
      t.string :state
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.timestamps
    end
  end

  def down
    drop_table :parks
  end
end
