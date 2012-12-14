class Campaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.text :name
      t.text :address
      t.decimal :longitude
      t.decimal :latitude
      t.boolean :gmaps
      t.text :content

      t.timestamps
    end
  end
end
