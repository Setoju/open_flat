class Apartment < ApplicationRecord
  # Add validations as needed
  validates :title, :price, :address, presence: true
end
