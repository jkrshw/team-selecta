json.array!(@guests) do |guest|
  json.extract! guest, 
  json.url event_guests_url(guest, format: :json)
end
