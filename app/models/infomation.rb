class Infomation < ApplicationRecord
	has_many:order_informations
	has_many:delivery
	has_many:payment_information
	has_many:product_infomation
	
	validates_presence_of:customer_name, :email, :address, :phone_number
	validates_uniqueness_of:email, :phone_number 
end
