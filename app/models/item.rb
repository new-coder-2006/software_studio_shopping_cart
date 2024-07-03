class Item < ApplicationRecord
  belongs_to :seller

  has_many :cartings, dependent: :destroy
  has_many :interested_shoppers, through: :cartings, source: :shopper
  has_many :orders, dependent: :destroy
  has_many :buyers, through: :orders, source: :shopper
  has_one_attached :image
end
