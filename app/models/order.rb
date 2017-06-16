class Order < ApplicationRecord
  belongs_to :food_item
  validates :quantity, :phone, :address, :username, presence: true
end
