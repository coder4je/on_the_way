class RenamePasswordToPasswordDigestInVenders < ActiveRecord::Migration[7.0]
  def up
    rename_column :venders, :password, :password_digest
  end

  def down 
    rename_column :venders, :password, :password_digest
  end
end
