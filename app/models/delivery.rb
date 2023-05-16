class Delivery < ApplicationRecord
  belongs_to :order_information

  validates_presence_of:cost, :shipping_method
  validates_uniqueness_of:shipping_method
  
end
