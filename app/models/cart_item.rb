class CartItem < ApplicationRecord
  belongs_to :cart

  validates_presence_of:product_name, :price
  validates_uniqueness_of:product_name
  validates_numericality_of:quantity 
end
