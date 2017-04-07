class Cart < ApplicationRecord

	has_mant :cart_items
	has_many :products, through: :cart_items


end
