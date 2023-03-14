class NewCart
  attr_accessor :user

  def initialize(user)
    @user = user
  end

  def perform
    Cart.create(user:@user, total_price:0)
  end
end