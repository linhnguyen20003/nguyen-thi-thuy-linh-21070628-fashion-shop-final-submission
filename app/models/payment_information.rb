class PaymentInformation < ApplicationRecord
  belongs_to:infomation

  validates_presence_of:type
  validates_uniqueness_of:infomation
  validates_numericality_of:invoice_number
end
