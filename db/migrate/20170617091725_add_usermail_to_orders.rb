class AddUsermailToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :mail, :string
  end
end
