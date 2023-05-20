class OrderInformation < ApplicationRecord
  belongs_to :infomation

  validates_presence_of:order_status_code, :date_order_placed

end
