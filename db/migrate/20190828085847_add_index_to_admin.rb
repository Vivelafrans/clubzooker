class AddIndexToAdmin < ActiveRecord::Migration[5.2]
  def change
    add_index :clubs, :admin_id
  end
end
