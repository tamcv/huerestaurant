class FoodItem < ApplicationRecord
  belongs_to :section
  validates :name, :price, presence: true
  
  def image_url_or_default
      image_url.presence || "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQErz7bHX9p-uZrYdYY243uhhGYUQX0EtD9FaCxwtO-OxP5P-YgZA"
  end
  
end
