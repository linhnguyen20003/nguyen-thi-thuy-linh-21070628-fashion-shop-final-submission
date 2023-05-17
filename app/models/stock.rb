class Stock < ApplicationRecord
  belongs_to :product_infomation

  validates_presence_of:product_name, :location
end
