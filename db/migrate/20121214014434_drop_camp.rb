class DropCamp < ActiveRecord::Migration
  def up
    drop_table :campaigns
  end

  def down
  end
end
