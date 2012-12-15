class CreateUserSessions < ActiveRecord::Migration
  def change
    create_table :user_sessions do |t|
      t.text :name
      t.text :address
      t.text :ip_address
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
