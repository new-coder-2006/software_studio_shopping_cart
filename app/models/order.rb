class Order < ApplicationRecord
  belongs_to :shopper
  belongs_to :item
end
