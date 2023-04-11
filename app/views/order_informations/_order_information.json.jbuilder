json.extract! order_information, :id, :order_status_code, :date_order_placed, :information_id, :created_at, :updated_at
json.url order_information_url(order_information, format: :json)
