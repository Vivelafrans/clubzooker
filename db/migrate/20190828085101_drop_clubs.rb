class DropClubs < ActiveRecord::Migration[5.2]
  def change
    execute "DROP TABLE #{:clubs} CASCADE"
    create_table :clubs do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :latitude
      t.string :longitude
      t.integer :admin_id, foreign_key: true

      t.timestamps
    end
  end
end
