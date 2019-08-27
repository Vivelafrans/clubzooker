class AddAdminToClub < ActiveRecord::Migration[5.2]
  def change
    remove_column :clubs, :admin_id
    add_reference :clubs, :user
  end
end
