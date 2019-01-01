json.extract! oil_change, :id, :vehicle_id, :date, :mileage, :oil_used, :notes, :created_at, :updated_at
json.url oil_change_url(oil_change, format: :json)
