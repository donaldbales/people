json.array!(@person_identifiers) do |person_identifier|
  json.extract! person_identifier, :id, :person_id, :identifier_id, :active_datetime, :inactive_datetime
  json.url person_identifier_url(person_identifier, format: :json)
end
