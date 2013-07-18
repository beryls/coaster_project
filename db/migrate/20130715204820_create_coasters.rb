class CreateCoasters < ActiveRecord::Migration
  def up
    create_table :coasters do |t|
      t.string :name
      t.belongs_to :park
      t.string :material
      t.integer :height
      t.integer :length
      t.integer :speed
      t.integer :inversions
      t.timestamps
    end
  end

  def down
    drop_table :coasters
  end
end
