class CreateOrderInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :order_informations do |t|
      t.integer :order_status_code
      t.datetime :date_order_placed
      t.references :information, null: false, foreign_key: true

      t.timestamps
    end
  end
end
