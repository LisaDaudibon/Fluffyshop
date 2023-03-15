class CartController < ApplicationController
	def index 
		@items = Item.all

	end
	
	def show 
	#	@item = Item.find(params[:id]) 
	end 


	def update
		@cart = Cart.find(params[:id])
		if @cart.update(cart_params)
		else 
	end 

	def destroy
    	@cart.destroy
 	 end 

	private

		def cart_params
			params.require(:cart).permit(:user_id, :item_id)
		end
	end

end
