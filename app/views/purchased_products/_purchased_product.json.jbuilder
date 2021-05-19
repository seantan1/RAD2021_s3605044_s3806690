json.extract! purchased_product, :id, :product_id, :count, :created_at, :updated_at
json.url purchased_product_url(purchased_product, format: :json)
