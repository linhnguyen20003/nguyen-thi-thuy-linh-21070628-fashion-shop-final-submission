json.extract! payment, :id, :invoice_number, :date_time_of_payment, :payment_type, :customer_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
