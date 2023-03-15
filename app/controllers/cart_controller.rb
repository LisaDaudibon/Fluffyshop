class CartController < ApplicationController
	def index 
	
	end

	def show 
		@cart = current_user.cart
		@cart = Cart.find_by(user: current_user)
		@total = @cart.total_price
	end 

	def create 
	end 

	def update
		@cart = Cart.find(params[:id])
		if @cart.update(cart_params)
		else 
		end
	end 

	def destroy
    @cart.destroy
  end 

	private

	def cart_params
		params.require(:cart).permit(:user_id, :item_id)
	end

end
