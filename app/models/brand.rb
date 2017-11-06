class Brand < ApplicationRecord
  belongs_to :product_line
  has_many :products
end
