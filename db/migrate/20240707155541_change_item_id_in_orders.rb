class ChangeItemIdInOrders < ActiveRecord::Migration[7.1]
  def change
    change_column_null :orders, :item_id, true
  end
end
