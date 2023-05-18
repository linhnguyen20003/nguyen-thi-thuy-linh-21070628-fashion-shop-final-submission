class Delivery < ApplicationRecord
  belongs_to :infomation

  validates_presence_of:cost, :shipping_method, :date
  validates_uniqueness_of:shipping_method

end
