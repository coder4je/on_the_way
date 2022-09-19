class CreateReceivers < ActiveRecord::Migration[7.0]
  def change
    create_table :receivers do |t|
      t.string :email
      t.string :password
      t.text :location

      t.timestamps
    end
  end
end
