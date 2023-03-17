class OrdersController < ApplicationController

  def index 
    @orders = current_user.orders
    @order = @orders.each do |order|
    end 

    order_item = @orders.each do |item|
      item = @order.item
    end 
  end 

  def create
	end 

  def destroy
  end 

end
