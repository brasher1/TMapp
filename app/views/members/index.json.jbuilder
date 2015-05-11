json.array!(@members) do |member|
  json.extract! member, :id, :firstname, :lastname
  json.url member_url(member, format: :json)
end
