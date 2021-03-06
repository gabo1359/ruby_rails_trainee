class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.date :date
      t.references :customer, null: false, foreign_key: true
      t.float :total
      t.integer :status

      t.timestamps
    end
  end
end
