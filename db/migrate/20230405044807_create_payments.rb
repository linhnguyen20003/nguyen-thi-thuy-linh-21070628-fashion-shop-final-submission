class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :invoice_number
      t.datetime :date_time_of_payment
      t.string :payment_type
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
