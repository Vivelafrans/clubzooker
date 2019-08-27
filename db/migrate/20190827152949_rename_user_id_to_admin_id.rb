class RenameUserIdToAdminId < ActiveRecord::Migration[5.2]
  def change
    rename_column :clubs, :user_id, :admin_id
  end
end
