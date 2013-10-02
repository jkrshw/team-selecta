json.array!(@members) do |member|
  json.extract! member, 
  json.url member_url(member, format: :json)
end
