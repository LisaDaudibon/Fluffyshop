class OrdersController < ApplicationController

  def index 
  end 

  def create 
    @order = Order.new(order_params)
	end 

  def destroy
    @order.destroy
  end 

  private 

  def order_params
		params.require(:cart).permit(:user_id, :cart_id, :total_price)
	end

end
