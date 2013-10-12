json.array!(@guests) do |guest|
	json.extract! guest, :attending_state
  json.url event_guest_url(@event, guest)
  json.user do
  	json.extract! guest.user, :name
  end
end
