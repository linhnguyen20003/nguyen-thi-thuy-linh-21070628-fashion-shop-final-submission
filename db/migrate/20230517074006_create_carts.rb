class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.datetime :date_of_creation
      t.datetime :last_updated
      t.references :cart_item, null: false, foreign_key: true
      t.float :total_price

      t.timestamps
    end
  end
end
