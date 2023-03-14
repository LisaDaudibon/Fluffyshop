class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders
  has_one :cart

  validates :first_name, presence: true
  validates :last_name, presence: true

  after_create :new_cart
  def new_cart
    NewCart.new(self).perform
  end
end
