class AddDurationToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :duration, :float
  end
end
