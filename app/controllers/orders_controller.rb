class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if charge = Stripe::Charge.create(
        amount: @order.amount_cents,
        currency: @order.amount.currency,
        source: params[:stripeToken],
        description: 'Commande sur Fluffy shop'
      )
      @order.save
      OrderMailer.order_confirmation(@order).deliver_now
      redirect_to @order
    else
      render '/cart'
    end
  end

  def destroy
    @order.destroy
  end 

  private

  def order_params 
    params.require(:cart).permit(:user_id, :item_id, :total)
  end 

end
