class OrderItemsController < ApplicationController

  def index 
	end

	def create
    order = current_user.cart
    item = Item.find(params[:item])
    order_item = OrderItem.create (order, item)
		redirect_to order_path(order)
  end

end
