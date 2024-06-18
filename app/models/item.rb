class Item < ApplicationRecord
  belongs_to :seller

  has_many :cartings, dependent: :destroy
  has_many :interested_shoppers, through: :cartings, source: :shopper
end
