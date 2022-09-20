class RenamePasswordToPasswordDigestInDrivers < ActiveRecord::Migration[7.0]
  def up
    rename_column :drivers, :password, :password_digest
  end

  def down 
    rename_column :drivers, :password, :password_digest
  end
end
