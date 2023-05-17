class Delivery < ApplicationRecord
  has_many:order_information
  belongs_to:infomation

  validates_presence_of:cost, :shipping_method
  validates_uniqueness_of:shipping_method
  
end
