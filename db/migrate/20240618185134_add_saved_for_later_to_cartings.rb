class AddSavedForLaterToCartings < ActiveRecord::Migration[7.1]
  def change
    add_column :cartings, :saved_for_later, :boolean, default: false 
  end
end
