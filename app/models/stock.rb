class Stock < ApplicationRecord
  belongs_to :product_infomation

  validates_presence_of:location, :quantity


end
