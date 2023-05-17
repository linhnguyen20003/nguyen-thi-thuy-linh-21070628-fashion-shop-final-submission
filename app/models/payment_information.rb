class PaymentInformation < ApplicationRecord
  belongs_to:infomation
  has_many:product_infomation

  validates_presence_of:type
  validates_uniqueness_of:email 
  validates_numericality_of:invoice_number
end
