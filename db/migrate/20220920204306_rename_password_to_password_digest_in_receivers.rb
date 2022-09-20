class RenamePasswordToPasswordDigestInReceivers < ActiveRecord::Migration[7.0]
  def up
    rename_column :receivers, :password, :password_digest
  end

  def down 
    rename_column :receivers, :password, :password_digest
  end
end
