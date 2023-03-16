
class NewOrderItem
  attr_accessor :order, :cart
  
    def initialize(order, cart)
        @order = order
        @cart = cart
    end
  
    def perform
      cart.items.each do |item|
          order_item_create(item)
      end
      cart.items.destroy_all
      cart.update(total_price: 0)
    end

private
  def order_item_create(item)
    OrderItem.create(order: order, item: item)
  end

end