class Cart < ApplicationRecord
	has_many:cart_item

	validates_presence_of:total_price, :date_of_creation, :last_updated
end
