json.array!(@person_locations) do |person_location|
  json.extract! person_location, :id, :person_id, :location_id, :active_datetime, :inactive_datetime
  json.url person_location_url(person_location, format: :json)
end
