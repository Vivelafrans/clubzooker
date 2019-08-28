class AddPhotosToClubsAndUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :photo, :string
    add_column :clubs, :photo, :string
  end
end
