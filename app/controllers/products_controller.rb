class ProductsController < ApplicationController

	def index
		@product = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def add_to_cart
		@product = Product.find(params[:id])
		current_cart.add_cart_item(@product)

		redirect_to root_path
	end

end
