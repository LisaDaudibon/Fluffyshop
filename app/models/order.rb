class Order < ApplicationRecord
    has_many :order_items
    has_many :items, through: :order_items
    belongs_to :user

    after_create :order_send

    def order_send 
        UserMailer.order_email(self).deliver_now
    end 
    
end
