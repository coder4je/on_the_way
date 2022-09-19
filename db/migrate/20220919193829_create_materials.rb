class CreateMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :materials do |t|
      t.string :name
      t.integer :vender_id
      t.integer :receiver_id
      t.integer :driver_id

      t.timestamps
    end
  end
end
