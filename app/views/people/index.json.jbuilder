json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :middle_name, :last_name, :birth_datetime, :gender_type_id, :person_type_id
  json.url person_url(person, format: :json)
end
