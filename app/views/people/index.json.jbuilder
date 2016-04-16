json.array!(@people) do |person|
  json.extract! person, :id, :name, :weight, :born, :description
  json.url person_url(person, format: :json)
end
