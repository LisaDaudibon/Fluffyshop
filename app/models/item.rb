class Item < ApplicationRecord
    has_many :order_items
    has_many :orders, through: :order_items
    has_many :cart_items
    has_many :carts, through: :cart_items

    validates :name, presence: true
    validates :price, presence: true
    validates :image_url, presence: true
end
