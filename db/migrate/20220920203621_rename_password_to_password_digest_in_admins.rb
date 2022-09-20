class RenamePasswordToPasswordDigestInAdmins < ActiveRecord::Migration[7.0]
  def up
    rename_column :admins, :password, :password_digest
  end

  def down 
    rename_column :admins, :password, :password_digest
  end
end
