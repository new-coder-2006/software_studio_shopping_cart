class RenameShoppersAndItemsInCartings < ActiveRecord::Migration[7.1]
  def change
    rename_column :cartings, :shoppers_id, :shopper_id
    rename_column :cartings, :items_id, :item_id
  end
end
