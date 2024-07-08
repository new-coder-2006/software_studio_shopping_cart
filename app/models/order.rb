class Order < ApplicationRecord
  belongs_to :shopper
  belongs_to :item

  has_one_attached :image

  before_save :store_item_details

  private

  def store_item_details
    self.item_name = item.name
    self.item_price = item.price
    self.image.attach(item.image.blob) if item.image.attached?
  end
end
