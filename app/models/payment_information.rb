class PaymentInformation < ApplicationRecord
  belongs_to :infomation

  validates_presence_of:invoice_number, :type
  validates_uniqueness_of:email 
  
end
