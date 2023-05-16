class Stock < ApplicationRecord
  belongs_to :productinfomation
  validates_presence_of:name, :location
  validates_uniqueness_of:name
  validates_numericality_of:quantity 
end
