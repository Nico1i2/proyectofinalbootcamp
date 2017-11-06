class Client < ApplicationRecord
  has_many :client_product_lines
  has_many :product_lines, through: :client_product_lines
end
