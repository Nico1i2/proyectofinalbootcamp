class ClientProductLine < ApplicationRecord
  belongs_to :client
  belongs_to :product_line
end
