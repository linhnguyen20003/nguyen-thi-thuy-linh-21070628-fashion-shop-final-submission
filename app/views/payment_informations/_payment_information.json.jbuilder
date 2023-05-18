json.extract! payment_information, :id, :invoice_number, :type, :payment_date, :email, :infomation_id, :created_at, :updated_at
json.url payment_information_url(payment_information, format: :json)
