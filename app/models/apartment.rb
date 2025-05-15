class Apartment < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :address, presence: true, length: { maximum: 500 }
  validates :price, presence: true, numericality: { greater_than: 0 }
end
