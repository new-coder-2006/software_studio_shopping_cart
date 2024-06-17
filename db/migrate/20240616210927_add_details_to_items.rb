class AddDetailsToItems < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :details, :text
  end
end
