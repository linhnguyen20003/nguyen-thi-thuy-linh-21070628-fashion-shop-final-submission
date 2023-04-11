class CreatePaymentInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_informations do |t|
      t.integer :invoice_number
      t.string :type
      t.timestamp :payment_date
      t.references :infomation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
