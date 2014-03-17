json.array!(@teams) do |team|
  json.extract! team, :id, :name, :member_1, :member_2
  json.url team_url(team, format: :json)
end
