class NewCartUpdate
    attr_accessor :cart, :cartitem
  
    def initialize(cart, cartitem)
        @cart = cart
        @cartitem = cartitem
    end
  
    
    def perform
        cartitem.destroy
        cart.update(total_price: update_total_price)
    end
private

    def update_total_price 
        cart.total_price - cartitem.item.price
    end
end