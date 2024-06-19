class Shopper < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :cartings, dependent: :destroy
  has_many :cart_items, through: :cartings, source: :item
  has_many :orders, dependent: :destroy
  has_many :ordered_items, through: :orders, source: :item
end
