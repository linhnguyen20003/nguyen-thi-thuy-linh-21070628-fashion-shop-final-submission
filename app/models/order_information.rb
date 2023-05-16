class OrderInformation < ApplicationRecord
  belongs_to :infomation
  validates_presence_of:infomation
  validates_uniqueness_of:infomation
  validates_numericality_of:order_status_code, :date_order_placed
end
