json.extract! customer_rating, :id, :user_id, :rating, :created_at, :updated_at
json.url customer_rating_url(customer_rating, format: :json)
