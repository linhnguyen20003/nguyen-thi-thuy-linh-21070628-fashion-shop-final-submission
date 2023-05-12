class CreateDeliveries < ActiveRecord::Migration[7.0]
  def change
    create_table :deliveries do |t|
      t.decimal :cost
      t.string :shipping_method
      t.datetime :date
      t.references :order_information, null: false, foreign_key: true

      t.timestamps
    end
  end
end
