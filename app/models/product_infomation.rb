class ProductInfomation < ApplicationRecord
	belongs_to:infomation
	belongs_to:stock 
	belongs_to:payment_information 
	
	validates_presence_of:name, :description, :size
	validates_uniqueness_of:name
	

end
