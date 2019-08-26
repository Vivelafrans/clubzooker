class CreateClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :address
      t.text :description
      t.references :user, foreign_key: true
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
