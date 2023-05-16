class Infomation < ApplicationRecord
	has_many :order_informations
	
	validates_presence_of:customer_name, :email, :address
	validates_uniqueness_of:email
	validates_numericality_of:phone_number 
end
