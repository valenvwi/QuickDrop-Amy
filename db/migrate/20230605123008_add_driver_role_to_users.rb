class AddDriverRoleToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :driver, :boolean, default: false
    add_column :users, :contact_phone, :string
  end
end
