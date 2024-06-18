class CreateCartings < ActiveRecord::Migration[7.1]
  def change
    create_table :cartings do |t|
      t.references :shoppers, null: false, foreign_key: true
      t.references :items, null: false, foreign_key: true

      t.timestamps
    end
  end
end
