class ProductLine < ApplicationRecord
  has_many :client_product_lines
  has_many :clients, through: :client_product_lines
  has_many :brands
end
