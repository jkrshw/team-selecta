json.array!(@hubs) do |hub|
  json.extract! hub, 
  json.url hub_url(hub, format: :json)
end
