class CreateDeliveries < ActiveRecord::Migration[7.0]
  def change
    create_table :deliveries do |t|
      t.decimal :cost
      t.string :shipping_method
      t.time :date
      t.references :infomation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
