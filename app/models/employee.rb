class Employee < ApplicationRecord
  has_many:order_information

  validates_presence_of:name, :position, :email
  validates_uniqueness_of:email
  validates_numericality_of:contact
end
