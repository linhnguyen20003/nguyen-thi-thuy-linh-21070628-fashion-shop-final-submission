class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :position
      t.integer :phone_number
      t.string :email
      t.string :address
      t.references :order_information, null: false, foreign_key: true

      t.timestamps
    end
  end
end
