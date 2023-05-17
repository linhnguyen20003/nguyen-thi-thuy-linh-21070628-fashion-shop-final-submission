class CreateCartItems < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_items do |t|
      t.string :product_name
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end
