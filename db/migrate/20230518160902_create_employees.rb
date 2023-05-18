class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.string :position
      t.string :email
      t.integer :contact

      t.timestamps
    end
  end
end
