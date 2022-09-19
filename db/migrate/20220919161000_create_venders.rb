class CreateVenders < ActiveRecord::Migration[7.0]
  def change
    create_table :venders do |t|
      t.string :email
      t.string :password
      t.string :category
      t.text :location

      t.timestamps
    end
  end
end
