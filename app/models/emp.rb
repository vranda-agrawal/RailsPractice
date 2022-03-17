class Emp < ApplicationRecord
  has_one :shop
	#delegate :address,to: :shop
	# def add
	# 	self.shop.address
	# end
end
