json.extract! saved_product, :id, :product_id, :count, :created_at, :updated_at
json.url saved_product_url(saved_product, format: :json)
