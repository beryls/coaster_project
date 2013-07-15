class CreateParks < ActiveRecord::Migration
  def up
    create_table :parks do |t|
      t.string :name
      t.string :location
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end

  def down
    drop_table :parks
  end
end
