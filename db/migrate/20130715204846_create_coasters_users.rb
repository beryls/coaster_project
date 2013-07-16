class CreateCoastersUsers < ActiveRecord::Migration
  def up
    create_table :coasters_users, :id => false do |t|
      t.belongs_to :coaster
      t.belongs_to :user
    end
  end

  def down
    drop_table :coasters_users
  end
end
