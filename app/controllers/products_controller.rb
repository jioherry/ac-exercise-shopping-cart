class ProductsController < ApplicationController
<<<<<<< HEAD
end
=======

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    current_cart.add_cart_item(@product)
    @item = current_cart.find_item_by(@product)

    redirect_to root_path
    # respond_to do |format|
    #   format.js
    # end
  end

end
>>>>>>> book
