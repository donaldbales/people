json.array!(@person_organizations) do |person_organization|
  json.extract! person_organization, :id, :person_id, :organization_id, :active_datetime, :inactive_datetime
  json.url person_organization_url(person_organization, format: :json)
end
