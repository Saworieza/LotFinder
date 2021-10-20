json.extract! vehicle, :id, :name, :mileage, :color, :body_type, :engine_type, :VIN, :transmission, :brand_id, :user_id, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
