class CartItemsController < ApplicationController
	def index 
	end
	def create
    cart = current_user.cart
    item = Item.find(params[:item])
		NewCartItem.new(cart, item).perform
		redirect_to cart_path(cart)
  end

  def edit
  end

  def update
  end


  def destroy
    cart = current_user.cart
    cartitem = CartItem.find(params[:id])
    NewCartUpdate.new(cart, cartitem).perform
		redirect_to cart_path(current_user.cart)
  end 
end
