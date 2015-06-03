class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :street_address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :string
    add_column :users, :longitude, :string
    add_column :users, :latitude, :string
  end
end
