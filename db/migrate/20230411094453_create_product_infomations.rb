class CreateProductInfomations < ActiveRecord::Migration[7.0]
  def change
    create_table :product_infomations do |t|
      t.string :name
      t.string :description
      t.string :size
      t.integer :quantity
      t.float :price
      t.datetime :order_date

      t.timestamps
    end
  end
end
