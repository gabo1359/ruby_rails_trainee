class CreateOrderLines < ActiveRecord::Migration[6.1]
  def change
    create_table :order_lines do |t|
      t.references :order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.float :price
      t.float :total

      t.timestamps
    end
  end
end
