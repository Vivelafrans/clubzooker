class ChangeColumnsInClub < ActiveRecord::Migration[5.2]
  def change
    remove_column :clubs, :latitude
    add_column :clubs, :latitude, :float
    remove_column :clubs, :longitude
    add_column :clubs, :longitude, :float
  end
end
