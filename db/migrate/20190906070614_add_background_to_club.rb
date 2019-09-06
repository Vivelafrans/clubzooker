class AddBackgroundToClub < ActiveRecord::Migration[5.2]
  def change
    add_column :clubs, :background, :string
  end
end
