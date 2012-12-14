class Campaigns < ActiveRecord::Migration
  def change
    drop_table :campaigns 
  end
end
