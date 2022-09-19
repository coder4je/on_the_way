class CreateDeliveries < ActiveRecord::Migration[7.0]
  def change
    create_table :deliveries do |t|
      t.string :name
      t.integer :admin_id
      t.integer :order_id
      t.integer :vender_id

      t.timestamps
    end
  end
end
