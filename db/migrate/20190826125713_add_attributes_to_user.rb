class AddAttributesToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :address, :string
    add_column :users, :description, :text
    add_column :users, :longitude, :float
    add_column :users, :latitude, :float
    add_reference :users, :club, foreign_key: true
  end
end
