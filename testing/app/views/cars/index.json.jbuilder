json.array!(@cars) do |car|
  json.extract! car, :id, :name, :speed
  json.url car_url(car, format: :json)
end
