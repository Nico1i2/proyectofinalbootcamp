json.extract! product, :id, :name, :description, :product_ID, :brand_id, :created_at, :updated_at
json.url product_url(product, format: :json)
