class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.references :product_infomation, null: false, foreign_key: true
      t.boolean :available
      t.string :location
      t.integer :quantity

      t.timestamps
    end
  end
end
