class ChangeColumnsInUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :latitude
    add_column :users, :latitude, :float
    remove_column :users, :longitude
    add_column :users, :longitude, :float
  end
end
