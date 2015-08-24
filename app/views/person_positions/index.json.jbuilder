json.array!(@person_positions) do |person_position|
  json.extract! person_position, :id, :person_id, :position_id, :active_datetime, :inactive_datetime
  json.url person_position_url(person_position, format: :json)
end
