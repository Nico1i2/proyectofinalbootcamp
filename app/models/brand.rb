class Brand < ApplicationRecord
  belongs_to :product_line
  has_many :products
  has_many :briefs
  has_many :plan_mediums
end
