json.extract! delivery, :id, :cost, :shipping_method, :date, :order_information_id, :created_at, :updated_at
json.url delivery_url(delivery, format: :json)
