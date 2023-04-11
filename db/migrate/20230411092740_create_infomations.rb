class CreateInfomations < ActiveRecord::Migration[7.0]
  def change
    create_table :infomations do |t|
      t.string :customer_name
      t.datetime :date_of_birth
      t.string :email
      t.integer :phone_number
      t.string :address

      t.timestamps
    end
  end
end
