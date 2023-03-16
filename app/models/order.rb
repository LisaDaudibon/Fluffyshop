class Order < ApplicationRecord
    has_many :order_items
    has_many :items, through: :order_items
    belongs_to :user

    after_create :order_email
    def order_email
      UserMailer.order_email(self).deliver_now
    end

    #def admin_order_email
       # UserMailer.admin_order_email(self).deliver_now
    #end
    
end
