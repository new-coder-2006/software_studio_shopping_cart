class AddItemDetailsToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :item_name, :string
    add_column :orders, :item_price, :decimal
  end
end
