class NewCartItem
    attr_accessor :cart, :item
  
    def initialize(cart, item)
        @cart = cart
        @item = item
    end
  
    def perform
        CartItem.create(cart: cart,item: item)
        cart.update(total_price: new_total_price )
    end
private

    def new_total_price 
        cart.total_price + item.price
    end
  end