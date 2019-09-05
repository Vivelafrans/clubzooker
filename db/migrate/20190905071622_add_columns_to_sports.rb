class AddColumnsToSports < ActiveRecord::Migration[5.2]
  def change
    add_column :sports, :description, :string
    add_column :sports, :photo, :string
  end
end
