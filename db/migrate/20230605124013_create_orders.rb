class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :item_description
      t.string :item_size
      t.string :status
      t.string :pickup_name
      t.string :pickup_address
      t.float :pickup_longitude
      t.float :pickup_latitude
      t.string :pickup_contact_phone
      t.string :pickup_additional_detail
      t.datetime :pickup_at
      t.string :dropoff_name
      t.string :dropoff_address
      t.float :dropoff_longitude
      t.float :dropoff_latitude
      t.string :dropoff_contact_phone
      t.string :dropoff_additional_detail
      t.datetime :dropoff_at
      t.float :price
      t.float :distance
      t.references :customer, null: false, foreign_key: { to_table: :users }
      t.references :driver, foreign_key: { to_table: :users }


      t.timestamps
    end
  end
end
