class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :sku
      t.string :name
      t.string :description
      t.float :price
      t.integer :stock

      t.timestamps
    end
  end
end
