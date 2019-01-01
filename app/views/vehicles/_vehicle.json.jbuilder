json.extract! vehicle, :id, :nickname, :make, :model, :mileage, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
