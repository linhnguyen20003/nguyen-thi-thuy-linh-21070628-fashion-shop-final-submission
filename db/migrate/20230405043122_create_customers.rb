class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.datetime :dateOfBirth
      t.string :address

      t.timestamps
    end
  end
end
