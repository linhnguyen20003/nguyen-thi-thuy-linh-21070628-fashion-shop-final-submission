class Employee < ApplicationRecord
  validates_presence_of:employee_name, :position, :email, :contact
  validates_uniqueness_of:email

end

