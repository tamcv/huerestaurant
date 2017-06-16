class AddColumnsToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :username, :string
    add_column :orders, :phone, :string
    add_column :orders, :address, :string
  end
end
