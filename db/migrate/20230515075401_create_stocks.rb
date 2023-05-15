class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.string :product_name
      t.boolean :available
      t.boolean :location
      t.integer :quantity
      t.references :productinfomation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
