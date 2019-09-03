class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.references :user, foreign_key: true
      t.references :sport, foreign_key: true
      t.integer :level

      t.timestamps
    end
  end
end
