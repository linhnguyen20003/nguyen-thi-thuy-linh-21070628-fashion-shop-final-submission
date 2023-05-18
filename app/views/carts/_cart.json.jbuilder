json.extract! cart, :id, :date_of_creation, :last_updated, :total_price, :created_at, :updated_at
json.url cart_url(cart, format: :json)
