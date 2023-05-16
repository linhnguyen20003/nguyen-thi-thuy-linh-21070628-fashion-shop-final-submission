class ProductInfomation < ApplicationRecord
	validates_presence_of:name, :description, :size
	validates_uniqueness_of:name
	validates_numericality_of:quantity, :price, :order_date
	

end
